import os
import psycopg2
from flask import Flask, render_template, request

app = Flask(__name__)

# --------------------------
# CONEXIÓN A LA BASE DE DATOS
# --------------------------
def get_db_connection():
    conn = psycopg2.connect(
        host = os.getenv('DB_HOST', 'localhost'),
        port = os.getenv('DB_PORT', '5432'),
        database = os.getenv('DB_NAME', 'tarea1'), 
        user = os.getenv('DB_USER', 'postgres'),
        password = os.getenv('DB_PASSWORD', 'postgres') 
    )
    return conn


# --------------------------
# PÁGINA DE TORNEOS - lista de torneos
# --------------------------

@app.route('/')
def home():
    return render_template('pagina_inicio.html')

@app.route('/torneos')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("SELECT id_torneo, nombre, videojuego, fecha_inicio, fecha_fin, prize_pool_usd, max_equipos FROM Torneos;")
    lista_torneos = cur.fetchall()
    cur.close() 
    conn.close()
    # Enviamos los datos al HTML
    return render_template('torneos.html', torneos=lista_torneos)

# --------------------------
#DETALLES DE UN TORNEO:
# --------------------------
@app.route('/torneo/<int:id_torneo>') 
def detalle_torneo(id_torneo):
    conn = get_db_connection()
    cur = conn.cursor()

# Info básica
    cur.execute('''
        SELECT nombre, videojuego, prize_pool_usd, fecha_inicio, fecha_fin, max_equipos
        FROM Torneos
        WHERE id_torneo = %s;
    ''', (id_torneo,))
    torneo = cur.fetchone()

# Tabla posiciones
    cur.execute('''
        SELECT
            eq.nombre_equipo,
            COUNT(*) AS pj,
            SUM(CASE
                WHEN (p.id_equipo_a = eq.id_equipo AND p.score_a > p.score_b)
                  OR (p.id_equipo_b = eq.id_equipo AND p.score_b > p.score_a) THEN 1 ELSE 0
            END) AS pg,
            SUM(CASE
                WHEN p.score_a = p.score_b THEN 1 ELSE 0
            END) AS pe,
            SUM(CASE
                WHEN (p.id_equipo_a = eq.id_equipo AND p.score_a < p.score_b)
                  OR (p.id_equipo_b = eq.id_equipo AND p.score_b < p.score_a) THEN 1 ELSE 0
            END) AS pp,
            SUM(CASE
                WHEN (p.id_equipo_a = eq.id_equipo AND p.score_a > p.score_b)
                  OR (p.id_equipo_b = eq.id_equipo AND p.score_b > p.score_a) THEN 3
                WHEN p.score_a = p.score_b THEN 1
                ELSE 0
            END) AS puntaje
        FROM Equipos eq
        JOIN Partidas p ON (p.id_equipo_a = eq.id_equipo OR p.id_equipo_b = eq.id_equipo)
        WHERE p.id_torneo = %s
          AND p.fase = 'fase de grupos'
        GROUP BY eq.id_equipo, eq.nombre_equipo
        ORDER BY puntaje DESC, pg DESC;
    ''', (id_torneo,))
    tabla_posiciones = cur.fetchall()

# Partidas jugadas
    cur.execute('''
        SELECT
            p.id_partida,
            ea.nombre_equipo AS equipo_a,
            eb.nombre_equipo AS equipo_b,
            p.score_a,
            p.score_b,
            p.fase,
            p.fecha_hora
        FROM Partidas p
        JOIN Equipos ea ON p.id_equipo_a = ea.id_equipo
        JOIN Equipos eb ON p.id_equipo_b = eb.id_equipo
        WHERE p.id_torneo = %s
        ORDER BY
            CASE p.fase
                WHEN 'fase de grupos'   THEN 1
                WHEN 'cuartos de final' THEN 2
                WHEN 'semifinal'        THEN 3
                WHEN 'final'            THEN 4
            END,
            p.fecha_hora;
    ''', (id_torneo,))
    partidas = cur.fetchall()

# Equipos inscritos
    cur.execute('''
        SELECT eq.nombre_equipo, eq.fecha_creacion
        FROM Equipos eq
        JOIN Inscripciones i ON eq.id_equipo = i.id_equipo
        WHERE i.id_torneo = %s
        ORDER BY eq.nombre_equipo;
    ''', (id_torneo,))
    equipos_inscritos = cur.fetchall()

# Sponsors
    cur.execute('''
        SELECT s.nombre, s.industria, a.monto_usd
        FROM Sponsors s
        JOIN Auspicios a ON s.id_sponsor = a.id_sponsor
        WHERE a.id_torneo = %s
        ORDER BY a.monto_usd DESC;
    ''', (id_torneo,))
    sponsors = cur.fetchall()
 
    cur.close()
    conn.close()

    # Pasamos todas las variables al template para que las renderice
    return render_template(
        'detalles_torneo.html',
        torneo=torneo,
        id_torneo=id_torneo,
        tabla_posiciones=tabla_posiciones,
        partidas=partidas,
        equipos_inscritos=equipos_inscritos,
        sponsors=sponsors
    )


# --------------------------
#ESTADÍSTICAS DE UN TORNEO
# --------------------------
@app.route('/estadisticas', methods = ['GET'])
def estadisticas():
    #Recibimos el id del torneo para obtener su información
    id_torneo = request.args.get('id_torneo') 
    id_equipo_seleccionado = request.args.get('id_equipo') 

    if not id_torneo or id_torneo == '':
        return "Falta el ID del torneo", 400

    conn = get_db_connection()
    cur = conn.cursor()

    # CONSULTAS SQL 
    cur.execute('SELECT nombre FROM Torneos WHERE id_torneo= %s',(id_torneo,)) 
    nombre_torneo = cur.fetchone()

    #Ranking
    consulta = '''
    SELECT 
    j.gamertag, 
    eq.nombre_equipo, 
    SUM(e.kos) as total_kos, 
    SUM(e.restarts) as total_restarts, 
    SUM(e.assists) as total_assists,
    ROUND(SUM(e.kos)::numeric / NULLIF(SUM(e.restarts), 0), 2) as ratio
    FROM Estadisticas e
    JOIN Jugadores j ON e.id_jugador = j.id_jugador
    JOIN Equipos eq ON j.id_equipo = eq.id_equipo
    JOIN Partidas p ON e.id_partida = p.id_partida
    WHERE p.id_torneo = %s 
    GROUP BY j.gamertag, eq.nombre_equipo
    HAVING COUNT(e.id_partida) >= 2
    ORDER BY ratio DESC;
    '''
    cur.execute(consulta,(id_torneo,))
    datos = cur.fetchall()

    #Evolución por fases
    consulta = '''
    SELECT  e.id_equipo, e.nombre_equipo
    FROM Equipos e
    JOIN Inscripciones i ON i.id_equipo = e.id_equipo
    WHERE i.id_torneo = %s
    '''
    cur.execute(consulta,(id_torneo,))
    equipos = cur.fetchall()


    seleccionados = []
    consulta ='''
    SELECT 
        j.gamertag,
        COALESCE(ROUND(AVG(e.kos) FILTER (WHERE p.fase='fase de grupos'), 2), 0) AS avg_kos_grupos,
        COALESCE(ROUND(AVG(e.restarts) FILTER (WHERE p.fase='fase de grupos'), 2), 0) AS avg_restarts_grupos,
        COALESCE(ROUND(AVG(e.assists) FILTER (WHERE p.fase='fase de grupos'), 2), 0) AS avg_assists_grupos,
        COALESCE(ROUND(AVG(e.kos) FILTER (WHERE p.fase IN ('semifinal','final')), 2), 0) AS avg_kos_eliminatorias,
        COALESCE(ROUND(AVG(e.restarts) FILTER (WHERE p.fase IN ('semifinal','final')), 2), 0) AS avg_restarts_eliminatorias,
        COALESCE(ROUND(AVG(e.assists) FILTER (WHERE p.fase IN ('semifinal','final')), 2), 0) AS avg_assists_eliminatorias
    FROM Estadisticas e
    JOIN Partidas p ON e.id_partida = p.id_partida
    JOIN Jugadores j ON e.id_jugador = j.id_jugador
    WHERE p.id_torneo = %s AND j.id_equipo = %s
    GROUP BY j.gamertag
    '''
    cur.execute(consulta,(id_torneo, id_equipo_seleccionado))
    seleccionados = cur.fetchall()

    cur.close()
    conn.close()

    return render_template('estadisticas.html', id_torneo=id_torneo, nombre_torneo=nombre_torneo, 
                           estadisticas=datos, equipos=equipos, evolucion=seleccionados)


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
                mnsj = 'No se puede realizar la inscripcion, el torneo ya tiene su máximo de equipos'
            else:
                cur.execute("""
                    INSERT INTO Inscripciones (id_torneo, id_equipo)
                    VALUES (%s, %s)
                """, (id_torneo, id_equipo))
                conn.commit()
                mnsj = 'Inscripción exitosa'
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