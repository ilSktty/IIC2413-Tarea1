import os
import psycopg2
from flask import Flask, render_template, request

app = Flask(__name__)

# Función para conectarse a la base de datos
def get_db_connection():
    conn = psycopg2.connect(
        host='localhost',
        database='tarea1',
        user='postgres',
        password='postgres' 
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    
    # CONSULTA SQL EXPLÍCITA (Lo que pide la tarea)
    # Vamos a traer los torneos que insertaste en data.sql
    cur.execute('SELECT nombre, videojuego, prize_pool_usd FROM Torneos;')
    lista_torneos = cur.fetchall()
    
    cur.close()
    conn.close()
    
    # Enviamos los datos al HTML
    return render_template('Torneo.html', torneos=lista_torneos)

@app.route('/busqueda', methods = ['GET'])
def busqueda():
    buscar_jugador = request.args.get('buscar_jugador','')
    jugadores = []
    buscar_equipo = request.args.get('buscar_equipo', '')
    equipos = []

    conn = get_db_connection()
    cur = conn.cursor()

    if buscar_jugador:
        cur.execute("""
            SELECT J.gamertag, J.nombre_real, J.pais, E.nombre_equipo
            FROM Jugadores J
            JOIN Equipos E ON J.id_equipo = E.id_equipo
            WHERE J.gamertag ILIKE %s OR J.pais ILIKE %s
            ORDER BY J.gamertag;
        """, (f'%{buscar_jugador}%', f'%{buscar_jugador}%'))
        jugadores = cur.fetchall()

    if buscar_equipo:
        cur.execute("""
            SELECT E.id_equipo, E.nombre_equipo, E.fecha_creacion, COUNT(J.id_jugador) AS cantidad_jugadores
            FROM Equipos E
            LEFT JOIN Jugadores J ON E.id_equipo = J.id_equipo
            WHERE E.nombre_equipo ILIKE %s
            GROUP BY E.id_equipo, E.nombre_equipo, E.fecha_creacion
            ORDER BY E.nombre_equipo;
        """, (f'%{buscar_equipo}%',))
        equipos = cur.fetchall()
    
    cur.close()
    conn.close()
    return render_template(
        'busqueda.html',
        jugadores = jugadores,
        equipos = equipos,
        buscar_jugador = buscar_jugador,
        buscar_equipo = buscar_equipo
    )

@app.route('/sponsors', methods = ['GET'])
def sponsors():
    vj_seleccionado = request.args.get('videojuego', '')
    videojuegos = []
    sponsors_res = []

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        SELECT DISTINCT videojuego
        FROM Torneos
        ORDER BY videojuego;
    """)
    videojuegos = cur.fetchall()

    # Poblamos selector de videojuegos
    if vj_seleccionado:
        cur.execute("""
            SELECT S.id_sponsor, S.nombre, S.industria, SUM(A.monto_usd) AS total
            FROM Sponsors S
            JOIN Auspicios A ON S.id_sponsor = A.id_sponsor
            JOIN Torneos T ON A.id_torneo = T.id_torneo
            WHERE T.videojuego = %s
                AND NOT EXISTS (
                    SELECT 1
                    FROM Torneos T1
                    WHERE T1.videojuego = %s
                        AND NOT EXISTS (
                            SELECT 1
                            FROM Auspicios A1
                            WHERE A1.id_sponsor = S.id_sponsor AND A1.id_torneo = T1.id_torneo
                        )
                )
            GROUP BY S.id_sponsor, S.nombre, S.industria
            ORDER BY S.nombre;
        """, (vj_seleccionado, vj_seleccionado))
        sponsors_res = cur.fetchall()

    cur.close()
    conn.close()
    return render_template(
        'sponsors.html',
        videojuegos = videojuegos,
        sponsors_res = sponsors_res,
        vj_seleccionado = vj_seleccionado
    )

@app.route('/inscripcion', methods = ['GET', 'POST'])
def inscripcion():
    torneos = []
    equipos = []
    mnsj = ''

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute("""
        SELECT id_torneo, nombre, videojuego
        FROM Torneos
        ORDER BY nombre;
    """)
    torneos = cur.fetchall()

    cur.execute("""
        SELECT id_equipo, nombre_equipo
        FROM Equipos
        ORDER BY nombre_equipo;
    """)
    equipos = cur.fetchall()

    if request.method == 'POST':
        id_torneo = request.form.get('torneo')
        id_equipo = request.form.get('equipo')

        # Existe la inscripcion?
        cur.execute("""
            SELECT 1
            FROM Inscripciones
            WHERE id_torneo = %s AND id_equipo = %s;
        """, (id_torneo, id_equipo))
        inscrip = cur.fetchone()

        if inscrip:
            mnsj = 'El equipo ya esta inscrito en este torneo'
        else:
            # Contamos cuantos inscritos hay
            cur.execute("""
                SELECT COUNT(*) AS total_insc
                FROM Inscripciones
                WHERE id_torneo = %s;
            """, (id_torneo,))
            actuales = cur.fetchone()[0]
            # Cual es el maximo permitido:
            cur.execute("""
                SELECT max_equipos
                FROM Torneos
                WHERE id_torneo = %s;
            """, (id_torneo,))
            max_equipos = cur.fetchone()[0]

            if actuales >= max_equipos:
                mnsj = 'No se puede realizar la inscripcion, el torneo ya tiene su maximo de equipos'
            else:
                cur.execute("""
                    INSERT INTO Inscripciones (id_torneo, id_equipo)
                    VALUES (%s, %s)
                """, (id_torneo, id_equipo))
                conn.commit()
                mnsj = 'Inscripcion exitosa'
    cur.close()
    conn.close()
    return render_template(
        'inscripcion.html',
        torneos = torneos,
        equipos = equipos,
        mnsj = mnsj
    )


if __name__ == '__main__':
    app.run(debug=True)