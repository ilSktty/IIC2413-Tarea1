# Tarea 1: Torneo de Gaming
Tarea n°1 de Base de Datos 2026-1.

## Datos de las integrantes.
| Nombre | N° de Alumno |
| :-: | :-: |
| Emma Brunetti | 23645083 |
| Scarlette Carter | 25663348 |
| Antonia Ríos | 23644524 |

## Requisitos y Librerias utilizadas:
- Python
- PostgreSQL
- Flask
- psycopg2
- os



## Variables del entorno.
La aplicacion utiliza las siguientes variables de entorno para conectarse a PostgreSQL
- 'DB_HOST'
- 'DB_PORT'
- 'DB_NAME'
- 'DB_USER'
- 'DB_PASSWORD'

Si estas no son definidas, entonces se usan los valores por defecto:
- 'DB_HOST: localhost'
- 'DB_PORT: 5432'
- 'DB_NAME: tarea1'
- 'DB_USER: postgres'
- 'DB_PASSWORD: postgres'

## Instrucciones para levantar la aplicación.

# Creación y carga de base de datos:
Sobre la creación y la carga de la BDD, se debe crear una base de datos llamada 'tarea1' en PostgreSQL. Luego, en esta se deben ejecutar los archivos 'schema.sql' y 'data.sql'

# Ejecucion de la aplicacion
Desde la carpeta 'app/' hay que ejecutar:
python app.py (o python3).

Si no se tienen instaladas las librerías utilizadas, se debe ejecutar:
pip install flask psycopg2
python app.py (o python3).

Luego, una vez que se corre esto, se debe abrir en el navegador
http://127.0.0.1:5000

# Funcionalidades implementadas
La aplicacion incluye las siguientes paginas:
1. / : Pagina de Torneos (/pagina_inicio). Corresponde a la página de inicio. Muestra 4 opciones para interactuar con la aplicación (4 botones)
2. /torneos : Permite conocer los torneos de Torneo de Gaming. Además, al seleccionar el botón para ver más información, se despliegan detalles del torneo seleccionado (/detalles_torneo).
3. /busqueda : Permite buscar jugadores por gamertag o pais, y equipos por nombre.
4. /sponsors : Permite seleccionar un videojuego y listar los sponsors que han auspiciado todos los torneos de ese videojuego, mostrando su nombre, industria y monto total aportado.
5. /inscripcion : Permite inscribir un equipo en un torneo. La aplicacion valida si el equipo ya esta inscrito y si el torneo alcanzo su numero maximo de equipos.
6. /estadisticas : Genera un ranking de todos los jugadores del torneo, apartir de su rendimiento general. Además, permite filtrar por equipo para comparar el rendimiento individual de cada jugador en la fase de grupos y la de eliminatorias.

## Informacion Relevante
- Se debe tener en cuenta que la aplicacion corre en localhost.
- En la pagina /sponsors se selecciona de videojuegos existentes y desde ahi se buscan sus sponsors. Si se quisiese buscar un videojuego que no exista para que el mensaje "No se encontraron sponsors" aparezca, hay que abrir en el navegador http://127.0.0.1:5000/sponsors?"videojuego inexistente" donde en "videojuego inexistente" ponemos el nombre del video juego que estamos intentando buscar sus sponsors (uno inexistente), como por ejemplo abrir en el navegador http://127.0.0.1:5000/sponsors?videojuego=Clash Royale