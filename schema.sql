-- PRUEBA (PARA VISUALIZAR LA BASE DE DATOS)
-- 1. Tablas Independientes
CREATE TABLE Torneos (
    id_torneo SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    videojuego VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    prize_pool_usd DECIMAL(12, 2),
    max_equipos INT DEFAULT 8,
    CONSTRAINT maximo_revisar CHECK (max_equipos > 0),
    CONSTRAINT pp_revisar CHECK (prize_pool_usd >= 0),
    CONSTRAINT fechas_revisar CHECK (fecha_fin >= fecha_inicio)
);

CREATE TABLE Sponsors (
    id_sponsor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    industria VARCHAR(100)
);

-- 2. Equipos y Jugadores (Relación uno a varios)
CREATE TABLE Equipos (
    id_equipo SERIAL PRIMARY KEY,
    nombre_equipo VARCHAR(100) UNIQUE NOT NULL,
    fecha_creacion DATE,
    id_capitan INT-- Se vincula después de crear Jugadores
);

CREATE TABLE Jugadores (
    id_jugador SERIAL PRIMARY KEY,
    gamertag VARCHAR(50) UNIQUE NOT NULL,
    nombre_real VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    pais VARCHAR(50),
    id_equipo INT REFERENCES Equipos(id_equipo) NOT NULL,
    CONSTRAINT unico_jugador_eq UNIQUE (id_jugador, id_equipo)
);

-- Alteramos Equipos para vincular id_capitan
ALTER TABLE Equipos
ADD CONSTRAINT fk_capitan
FOREIGN KEY (id_capitan, id_equipo) REFERENCES Jugadores(id_jugador, id_equipo);

-- 3. Relaciones y Partidas
CREATE TABLE Inscripciones (
    id_torneo INT REFERENCES Torneos(id_torneo),
    id_equipo INT REFERENCES Equipos(id_equipo),
    PRIMARY KEY (id_torneo, id_equipo)
);

CREATE TABLE Partidas (
    id_partida SERIAL PRIMARY KEY,
    id_torneo INT REFERENCES Torneos(id_torneo),
    id_equipo_a INT REFERENCES Equipos(id_equipo),
    id_equipo_b INT REFERENCES Equipos(id_equipo),
    fecha_hora TIMESTAMP,
    score_a INT,
    score_b INT,
    fase VARCHAR(50), -- grupos, semifinal, final
    CONSTRAINT fk_equipo_a FOREIGN KEY (id_torneo, id_equipo_a) REFERENCES Inscripciones(id_torneo, id_equipo),
    CONSTRAINT fk_equipo_b FOREIGN KEY (id_torneo, id_equipo_b) REFERENCES Inscripciones(id_torneo, id_equipo),
    CONSTRAINT equipos_distintos CHECK (id_equipo_a <> id_equipo_b),
    CONSTRAINT fases_correctas CHECK (fase IN ('fase de grupos', 'cuartos de final', 'semifinal', 'final')), -- hacerlo lowercase, que de lo mismo como lo ingresen
    CONSTRAINT revisar_a CHECK (score_a >= 0),
    CONSTRAINT revisar_b CHECK (score_b >= 0)
);

CREATE TABLE Estadisticas (
    id_partida INT REFERENCES Partidas(id_partida),
    id_jugador INT REFERENCES Jugadores(id_jugador),
    kos INT DEFAULT 0,
    restarts INT DEFAULT 0,
    assists INT DEFAULT 0,
    PRIMARY KEY (id_partida, id_jugador),
    CONSTRAINT kos_pos CHECK (kos >= 0),
    CONSTRAINT restarts_pos CHECK (restarts >= 0),
    CONSTRAINT assists_pos CHECK (assists >= 0)
);
-- No estamos asegurando todavia que ese jugador pertenezca a alguno de los dos equipos de la partida.

CREATE TABLE Auspicios (
    id_sponsor INT REFERENCES Sponsors(id_sponsor),
    id_torneo INT REFERENCES Torneos(id_torneo),
    monto_usd DECIMAL(12, 2),
    PRIMARY KEY (id_sponsor, id_torneo),
    CONSTRAINT monto_pos CHECK (monto_usd >= 0)
);