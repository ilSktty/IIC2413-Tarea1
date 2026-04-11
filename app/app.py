import os
import psycopg2
from flask import Flask, render_template

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

@app.route('/busqueda')
def busqueda():
    return render_template('busqueda.html')

@app.route('/sponsors')
def busqueda():
    return render_template('sponsors.html')

@app.route('/inscripcion')
def busqueda():
    return render_template('inscripcion.html')


if __name__ == '__main__':
    app.run(debug=True)