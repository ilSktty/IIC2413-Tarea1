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
    cur.execute('SELECT nombre, videojuego, prize_pool_usd, id_torneo FROM Torneos;')
    lista_torneos = cur.fetchall()
    
    cur.close()
    conn.close()
    
    # Enviamos los datos al HTML
    return render_template('Torneo.html', torneos=lista_torneos)

@app.route('/estadisticas')
def estadisticas():
    #Recibimos el id del torneo para obtener su información
    id = request.args.get('id_torneo') 
    conn = get_db_connection()
    cur = conn.cursor()

    # CONSULTAS SQL 
    cur.execute('SELECT nombre FROM Torneos WHERE id_torneo= %s',(id,)) 
    nombre_torneo = cur.fetchone()

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
    cur.execute(consulta,(id,))
    datos = cur.fetchall()

    cur.close()
    conn.close()

    return render_template('estadisticas.html', id_torneo=id, nombre_torneo=nombre_torneo, estadisticas=datos)



if __name__ == '__main__':
    app.run(debug=True)