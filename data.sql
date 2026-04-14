-- INSERTAR TORNEOS (3)
INSERT INTO Torneos (nombre, videojuego, fecha_inicio, fecha_fin, prize_pool_usd, max_equipos) VALUES 
('Copa Grand Prix', 'Mario Kart', '2026-05-01', '2026-05-15', 50000.00, 8),
('ArenaKing', 'Mario Kart', '2026-06-10', '2026-06-20', 25000.00, 8),
('Los Champions de la Champions', 'EA Sports FC 26', '2026-07-05', '2026-07-15', 100000.00, 8);

-- INSERTAR EQUIPOS (10)
INSERT INTO Equipos (nombre_equipo, fecha_creacion) VALUES 
('Mugiwaras', '2026-08-30'),
('Avengers', '2023-03-14'),
('TheOffice', '2024-09-11'),
('GossipGirl', '2022-10-13'),
('TheWalkingDead', '2026-02-14'),
('PeakyBlinders', '2024-07-01'),
('TVD', '2024-06-29'),
('UpsideDown', '2023-05-12'),
('PotterHeads', '2023-08-03'), 
('Pichanga', '2025-04-20');

-- INSERTAR JUGADORES (50)
-- Equipo 1: Mugiwaras
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('StrawHat', 'Monkey D. Luffy', 'luffy@onepiece.com', '2004-05-05', 'Japón', 1),
('PirateHunter', 'Roronoa Zoro', 'zoro@onepiece.com', '2004-11-11', 'Japón', 1),
('CatBurglar', 'Nami', 'nami@onepiece.com', '2004-07-03', 'Japón', 1),
('BlackLeg', 'Vinsmoke Sanji', 'sanji@onepiece.com', '2004-03-02', 'Japón', 1),
('SniperKing', 'Usopp', 'usopp@onepiece.com', '2004-04-01', 'Japón', 1);

-- Equipo 2: Avengers
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('Ironman', 'Tony Stark', 'tony@avengers.com', '1970-05-29', 'EE. UU.', 2),
('CaptainAmerica', 'Steve Rogers', 'steve@avengers.com', '1918-07-04', 'EE. UU.', 2),
('SpiderMan', 'Peter Parker', 'peter@avengers.com', '2001-08-10', 'EE. UU.', 2),
('Thor', 'Thor Odinson', 'thor@avengers.com', '0964-11-14', 'Asgard', 2),
('Hulk', 'Bruce Banner', 'bruce@avengers.com', '1969-12-18', 'EE. UU.', 2);

-- Equipo 3: The Office
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('WorldBestBoss', 'Michael Scott', 'michael@dundermifflin.com', '1965-03-15', 'EE. UU.', 3),
('BigTunna', 'Jim Halpert', 'jim@dundermifflin.com', '1978-10-01', 'EE. UU.', 3),
('Beesly', 'Pam Beesly', 'pam@dundermifflin.com', '1979-03-25', 'EE. UU.', 3),
('AssistantRegManager', 'Dwight Schrute', 'dwight@dundermifflin.com', '1970-01-20', 'EE. UU.', 3),
('BusinessBleep', 'Kelly Kapoor', 'kelly@dundermifflin.com', '1980-02-05', 'EE. UU.', 3);

-- Equipo 4: Gossip Girl
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('itgirl', 'Serena van der Woodsen', 'serena@xoxo.com', '1987-07-14', 'EE. UU.', 4),
('QueenB', 'Blair Waldorf', 'blair@xoxo.com', '1987-11-15', 'EE. UU.', 4),
('LonelyBoy', 'Dan Humphrey', 'dan@xoxo.com', '1987-04-20', 'EE. UU.', 4),
('ChuckBass', 'Chuck Bass', 'chuck@xoxo.com', '1987-01-19', 'EE. UU.', 4),
('GoldenBoy', 'Nate Archibald', 'nate@xoxo.com', '1987-08-17', 'EE. UU.', 4);
    
-- Equipo 5: The Walking Dead
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('Grimes', 'Rick Grimes', 'rick@twd.com', '1973-09-14', 'EE. UU.', 5),
('CrossbowKing', 'Daryl Dixon', 'daryl@stwd.com', '1969-01-06', 'EE. UU.', 5),
('PizzaBoy', 'Glenn Rhee', 'glenn@twd.com', '1983-12-21', 'Corea del Sur', 5),
('KatanaQueen', 'Michonne Hawthorne', 'michonne@twd.com', '1978-02-13', 'EE. UU.', 5),
('Grimes2', 'Carl Grimes', 'carl@twd.com', '1999-06-27', 'EE. UU.', 5);

-- Equipo 6: Peaky Blinders
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('TommyShelby', 'Thomas Shelby', 'tshelby@shelbycompany.com', '1890-11-01', 'Reino Unido', 6),
('ArthurShelby', 'Arthur Shelby', 'ashelby@shelbycompany.com', '1887-05-12', 'Reino Unido', 6),
('FinnShelby', 'Finn Shelby', 'fshelby@shelbycompany.com', '1908-01-01', 'Reino Unido', 6),
('JohnnyShelby', 'John Shelby', 'jshelby@shelbycompany.com', '1895-09-03', 'Reino Unido', 6),
('Polly', 'Elizabeth Gray', 'polly@shelbycompany.com', '1884-07-22', 'Reino Unido', 6);

-- Equipo 7: TVD
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('TeamStef', 'Stefan Salvatore', 'stefan@mysticfalls.com', '1846-11-01', 'Italia', 7),
('TeamDamon', 'Damon Salvatore', 'damon@mysticfalls.com', '1839-06-18', 'Italia', 7),
('ElenaG', 'Elena Gilbert', 'elena@mysticfalls.com', '1992-06-22', 'EE. UU.', 7),
('Katerina', 'Katherine Pierce', 'katerina@mysticfalls.com', '1473-06-05', 'Bulgaria', 7),
('VampireBarbie', 'Caroline Forbes', 'caroline@mysticfalls.com', '1992-10-10', 'EE. UU.', 7);

-- Equipo 8: UpsideDown
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('Eleven', 'Jane Hopper', 'el@hawkins.com', '1971-02-19', 'EE. UU.', 8),
('WillTheWise', 'Will Byers', 'will@hawkins.com', '1971-03-22', 'EE. UU.', 8),
('MikeW', 'Mike Wheeler', 'mike@hawkins.com', '1971-04-07', 'EE. UU.', 8),
('SteveH', 'Steve Harrington', 'steve@hawkins.com', '1966-05-15', 'EE. UU.', 8),
('MadMax', 'Max Mayfield', 'max@hawkins.com', '1971-05-22', 'EE. UU.', 8);

-- Equipo 9: Potterheads
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('TheChosenOne', 'Harry Potter', 'hpotter@hogwarts.com', '1980-07-31', 'Reino Unido', 9),
('BrightestWitch', 'Hermione Granger', 'hgranger@hogwarts.com', '1979-09-19', 'Reino Unido', 9),
('FerretBoy', 'Draco Malfoy', 'dmalfoy@hogwarts.com', '1980-06-05', 'Reino Unido', 9),
('WonWon', 'Ron Weasley', 'rweasley@hogwarts.com', '1980-03-01', 'Reino Unido', 9),
('KeeperOfKeys', 'Rubeus Hagrid', 'rhagrid@hogwarts.com', '1928-12-06', 'Reino Unido', 9);

-- Equipo 10: Pichanga
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('GOAT', 'Lionel Messi', 'lmessi@fifa.com', '1987-06-24', 'Argentina', 10),
('CR7', 'Cristiano Ronaldo', 'cronaldo@fifa.com', '1985-02-05', 'Portugal', 10),
('Ney', 'Neymar Jr', 'njr@fifa.com', '1992-02-05', 'Brasil', 10),
('Starboy', 'Lamine Yamal', 'lyamal@fifa.com', '2007-07-13', 'España', 10),
('Grizou', 'Antoine Griezmann', 'agriezmann@fifa.com', '1991-03-21', 'Francia', 10);

-- ASIGNACIÓN DE CAPITANES (Primer jugador de cada equipo)
UPDATE Equipos SET id_capitan = 1 WHERE id_equipo = 1;  -- StrawHat (Mugiwaras)
UPDATE Equipos SET id_capitan = 6 WHERE id_equipo = 2;  -- Ironman (Avengers)
UPDATE Equipos SET id_capitan = 11 WHERE id_equipo = 3; -- WorldBestBoss (The Office)
UPDATE Equipos SET id_capitan = 16 WHERE id_equipo = 4; -- itgirl (Gossip Girl)
UPDATE Equipos SET id_capitan = 21 WHERE id_equipo = 5; -- Grimes (The Walking Dead)
UPDATE Equipos SET id_capitan = 26 WHERE id_equipo = 6; -- TommyShelby (Peaky Blinders)
UPDATE Equipos SET id_capitan = 31 WHERE id_equipo = 7; -- TeamStef (TVD)
UPDATE Equipos SET id_capitan = 36 WHERE id_equipo = 8; -- Eleven (UpsideDown)
UPDATE Equipos SET id_capitan = 41 WHERE id_equipo = 9; -- TheChosenOne (Potterheads)
UPDATE Equipos SET id_capitan = 46 WHERE id_equipo = 10; -- GOAT (Pichanga)

-- INSCRIPCIONES PARA EL TORNEO 1 (Copa Grand Prix) LLENO
INSERT INTO Inscripciones (id_torneo, id_equipo) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8);

-- INSERTAR SPONSORS (5)
INSERT INTO Sponsors (nombre, industria) VALUES 
('Netflix', 'Entretención'), 
('Red Bull', 'Bebidas'),
('Stark Industries', 'Tecnología'),
('Dunder Mifflin', 'Papel'),
('Shelby Company Ltd', 'Logística');

-- ASIGNAR AUSPICIOS (Monto que pone el sponsor a un torneo específico)
INSERT INTO Auspicios (id_sponsor, id_torneo, monto_usd) VALUES 
(1, 1, 15000.00), -- Netflix torneo 1
(1, 2, 10000.00), -- Netflix torneo 2
(2, 1, 5000.00), -- Redbull torneo 1
(4, 2, 12000.00), -- Dunder Mifflin torneo 2
(3, 3, 20000.00), -- Stark Industries torneo 3
(5, 3, 30000.00); -- Shelby Company torneo 3
 
------------
-- TORNEO 1 
------------
-- Formato PARTIDAS TORNEO 1: round-robin (todos contra todos).
-- Fase de Grupos (grupo 1): 
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 1, 2, '2026-05-02 14:00:00', 3, 1, 'fase de grupos'),
(1, 1, 3, '2026-05-03 14:00:00', 2, 4, 'fase de grupos'),
(1, 1, 4, '2026-05-04 14:00:00', 0, 2, 'fase de grupos'),
(1, 2, 3, '2026-05-05 14:00:00', 3, 2, 'fase de grupos'),
(1, 2, 4, '2026-05-06 14:00:00', 1, 3, 'fase de grupos'),
(1, 3, 4, '2026-05-07 14:00:00', 0, 2, 'fase de grupos');
-- resultados --> Equipo 1: (3 pts), Equipo 2: (3 pts), Equipo 3: (3 pts), Equipo 4: (9 pts)

-- Fase de Grupos (grupo 2) 
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 5, 6, '2026-05-02 17:00:00', 2, 1, 'fase de grupos'),
(1, 5, 7, '2026-05-03 17:00:00', 2, 3, 'fase de grupos'),
(1, 5, 8, '2026-05-04 17:00:00', 0, 1, 'fase de grupos'),
(1, 6, 7, '2026-05-05 17:00:00', 1, 4, 'fase de grupos'),
(1, 6, 8, '2026-05-06 17:00:00', 3, 2, 'fase de grupos'),
(1, 7, 8, '2026-05-07 17:00:00', 5, 2, 'fase de grupos');
-- resultados --> Equipo 5: (3 pts), Equipo 6: (3 pts), Equipo 7: (9 pts), Equipo 8: (3 pts)

-- Semifinal (avanzan los dos mejores de cada grupo)
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 4, 7, '2026-05-10 14:00:00', 3, 5, 'semifinal'),
(1, 4, 8, '2026-05-11 14:30:00', 2, 3, 'semifinal'),
(1, 2, 7, '2026-05-12 14:00:00', 2, 4, 'semifinal'),
(1, 2, 8, '2026-05-13 14:30:00', 4, 1, 'semifinal');

--FINAL
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase)
VALUES (1, 2, 7, '2026-05-15 12:00:00', 4, 6, 'final');



--ESTADISTICAS
-- Partida 1: Mugiwaras (Equipo 1) vs Avengers (Equipo 2) --> Gana Mugiwaras 3-1
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(1, 1, 16, 1, 5), (1, 2, 13, 2, 6), (1, 3, 15, 1, 3), (1, 4, 11, 3, 7), (1, 5, 12, 2, 5), 
(1, 6, 7, 8, 4), (1, 7, 6, 9, 5), (1, 8, 9, 7, 3), (1, 9, 8, 10, 4), (1, 10, 5, 12, 2);

-- Partida 2: Mugiwaras (Equipo 1) vs TheOffice (Equipo3) --> Gana TheOffice 2-4
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(2, 1, 7, 8, 4), (2, 2, 6, 9, 5), (2, 3, 9, 7, 3), (2, 4, 8, 10, 4), (2, 5, 5, 12, 2), 
(2, 11, 16, 1, 5), (2, 12, 13, 2, 6), (2, 13, 15, 1, 3), (2, 14, 11, 3, 7), (2, 15, 12, 2, 5);

-- Partida 3: Mugiwaras (Equipo 1) vs GossipGirl (Equipo 4) --> Gana GossipGirl 0-2
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(3, 1, 7, 8, 4), (3, 2, 6, 9, 5), (3, 3, 9, 7, 3), (3, 4, 8, 10, 4), (3, 5, 5, 12, 2), 
(3, 16, 16, 1, 5), (3, 17, 13, 2, 6), (3, 18, 15, 1, 3), (3, 19, 11, 3, 7), (3, 20, 12, 2, 5);

-- Partida 4: Avengers (Equipo 2) vs TheOffice (Equipo 3) --> Gana Avengers 3-2
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(4, 6, 16, 1, 5), (4, 7, 13, 2, 6), (4, 8, 15, 1, 3), (4, 9, 11, 3, 7), (4, 10, 12, 2, 5), 
(4, 11, 7, 8, 4), (4, 12, 6, 9, 5), (4, 13, 9, 7, 3), (4, 14, 8, 10, 4), (4, 15, 5, 12, 2);

-- Partida 5: Avengers (Equipo 2) vs GossipGirl (Equipo 4) --> Gana GossipGirl 1-3
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(5, 6, 7, 8, 4), (5, 7, 6, 9, 5), (5, 8, 9, 7, 3), (5, 9, 8, 10, 4), (5, 10, 5, 12, 2), 
(5, 16, 16, 1, 5), (5, 17, 13, 2, 6), (5, 18, 15, 1, 3), (5, 19, 11, 3, 7), (5, 20, 12, 2, 5);

-- Partida 6: TheOffice (Equipo 3) vs GossipGirl (Equipo 4) --> Gana GossipGirl 0-2
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(6, 11, 7, 8, 4), (6, 12, 6, 9, 5), (6, 13, 9, 7, 3), (6, 14, 8, 10, 4), (6, 15, 5, 12, 2), 
(6, 16, 16, 1, 5), (6, 17, 13, 2, 6), (6, 18, 15, 1, 3), (6, 19, 11, 3, 7), (6, 20, 12, 2, 5);

-- FASE DE GRUPOS - GRUPO 2
-- Partida 7: TheWalkingDead (Equipo 5) vs PeakyBlinders (Equipo 6) --> Gana TWD 2-1
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(7, 21, 16, 1, 5), (7, 22, 13, 2, 6), (7, 23, 15, 1, 3), (7, 24, 11, 3, 7), (7, 25, 12, 2, 5), 
(7, 26, 7, 8, 4), (7, 27, 6, 9, 5), (7, 28, 9, 7, 3), (7, 29, 8, 10, 4), (7, 30, 5, 12, 2);
-- ##################
-- Partida 8: TheWalkingDead (Equipo 5) vs TVD (Equipo 7) --> Gana TVD 2-3
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(8, 21, 7, 8, 4), (8, 22, 6, 9, 5), (8, 23, 9, 7, 3), (8, 24, 8, 10, 4), (8, 25, 5, 12, 2), 
(8, 31, 16, 1, 5), (8, 32, 13, 2, 6), (8, 33, 15, 1, 3), (8, 34, 11, 3, 7), (8, 35, 12, 2, 5);

-- Partida 9: TheWalkingDead (Equipo 5) vs UpsideDown (Equipo 8) --> Gana UpsideDown 0-1
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(9, 21, 7, 8, 4), (9, 22, 6, 9, 5), (9, 23, 9, 7, 3), (9, 24, 8, 10, 4), (9, 25, 5, 12, 2), 
(9, 36, 16, 1, 5), (9, 37, 13, 2, 6), (9, 38, 15, 1, 3), (9, 39, 11, 3, 7), (9, 40, 12, 2, 5);

-- Partida 10: PeakyBlinders (Equipo 6) vs TVD (Equipo 7) --> Gana TVD 1-4
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(10, 26, 7, 8, 4), (10, 27, 6, 9, 5), (10, 28, 9, 7, 3), (10, 29, 8, 10, 4), (10, 30, 5, 12, 2), 
(10, 31, 16, 1, 5), (10, 32, 13, 2, 6), (10, 33, 15, 1, 3), (10, 34, 11, 3, 7), (10, 35, 12, 2, 5);

-- Partida 11: PeakyBlinders (Equipo 6) vs UpsideDown (Equipo 8) --> Gana PeakyBlinders 3-2
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(11, 26, 16, 1, 5), (11, 27, 13, 2, 6), (11, 28, 15, 1, 3), (11, 29, 11, 3, 7), (11, 30, 12, 2, 5), 
(11, 36, 7, 8, 4), (11, 37, 6, 9, 5), (11, 38, 9, 7, 3), (11, 39, 8, 10, 4), (11, 40, 5, 12, 2);

-- Partida 12: TVD (Equipo 7) vs UpsideDown (Equipo 8) --> Gana TVD 5-2
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(12, 31, 16, 1, 5), (12, 32, 13, 2, 6), (12, 33, 15, 1, 3), (12, 34, 11, 3, 7), (12, 35, 12, 2, 5), 
(12, 36, 7, 8, 4), (12, 37, 6, 9, 5), (12, 38, 9, 7, 3), (12, 39, 8, 10, 4), (12, 40, 5, 12, 2);

-- SEMIFINALES
-- Partida 13: GossipGirl (Equipo 4) vs TVD (Equipo 7) --> Gana TVD 3-5
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(13, 16, 7, 8, 4), (13, 17, 6, 9, 5), (13, 18, 9, 7, 3), (13, 19, 8, 10, 4), (13, 20, 5, 12, 2), 
(13, 31, 16, 1, 5), (13, 32, 13, 2, 6), (13, 33, 15, 1, 3), (13, 34, 11, 3, 7), (13, 35, 12, 2, 5);

-- Partida 14: GossipGirl (Equipo 4) vs UpsideDown Equipo 8) --> Gana UpsideDown 2-3
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(14, 16, 7, 8, 4), (14, 17, 6, 9, 5), (14, 18, 9, 7, 3), (14, 19, 8, 10, 4), (14, 20, 5, 12, 2), 
(14, 36, 16, 1, 5), (14, 37, 13, 2, 6), (14, 38, 15, 1, 3), (14, 39, 11, 3, 7), (14, 40, 12, 2, 5);

-- Partida 15: Avengers (Equipo 2) vs TVD (Equipo 7) --> Gana TVD 2-4
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(15, 6, 7, 8, 4), (15, 7, 6, 9, 5), (15, 8, 9, 7, 3), (15, 9, 8, 10, 4), (15, 10, 5, 12, 2), 
(15, 31, 16, 1, 5), (15, 32, 13, 2, 6), (15, 33, 15, 1, 3), (15, 34, 11, 3, 7), (15, 35, 12, 2, 5);

-- Partida 16: Avengers (Equipo 2) vs UpsideDown (Equipo 8) --> Gana Avengers 4-1
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(16, 6, 16, 1, 5), (16, 7, 13, 2, 6), (16, 8, 15, 1, 3), (16, 9, 11, 3, 7), (16, 10, 12, 2, 5), 
(16, 36, 7, 8, 4), (16, 37, 6, 9, 5), (16, 38, 9, 7, 3), (16, 39, 8, 10, 4), (16, 40, 5, 12, 2);

-- FINAL
-- Partida 17: Avengers (Equipo 2) vs TVD (Equipo 7) --> Gana TVD 4-6
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(17, 6, 7, 8, 4), (17, 7, 6, 9, 5), (17, 8, 9, 7, 3), (17, 9, 8, 10, 4), (17, 10, 5, 12, 2), 
(17, 31, 16, 1, 5), (17, 32, 13, 2, 6), (17, 33, 15, 1, 3), (17, 34, 11, 3, 7), (17, 35, 12, 2, 5); 



------------
-- TORNEO 2 
------------
-- INSCRIPCIONES PARA EL TORNEO 2 (Los Champions de la Champions)
INSERT INTO Inscripciones (id_torneo, id_equipo) VALUES 
(2, 1), (2, 3), (2, 6), (2, 10);
-- TORNEO 2
-- Fase de Grupos (grupo 1): 
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(2, 1, 3, '2026-05-02 14:00:00', 7, 1, 'fase de grupos'),
(2, 1, 6, '2026-05-03 14:00:00', 2, 2, 'fase de grupos'),
(2, 1, 10, '2026-05-04 14:00:00', 5, 2, 'fase de grupos'),
(2, 3, 6, '2026-05-05 14:00:00', 3, 2, 'fase de grupos'),
(2, 3, 10, '2026-05-06 14:00:00', 1, 1, 'fase de grupos'),
(2, 6, 10, '2026-05-07 14:00:00', 0, 0, 'fase de grupos');
-- resultados --> Equipo 1: (7 pts), Equipo 3: (4 pts), Equipo 6: (2 pts), Equipo 10: (2 pts)
-- Pasan directo a la final equipo 1 y 3
--FINAL
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase)
VALUES (2, 1, 3, '2026-05-15 12:00:00', 4, 3, 'final'); -- Campeón Equipo 1