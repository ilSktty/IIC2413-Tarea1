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

UPDATE Equipos SET id_capitan = 1 WHERE id_equipo = 1;

-- Inscripciones para el Torneo 1 (Copa Grand Prix) LLENO
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
 


-- usé GEMINI acá:
-- Partida 1: Fase de Grupos [cite: 36, 62]
-- ROUND-ROBIN : [1-4] 
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) 
VALUES (1, 1, 2, '2026-05-02 14:00:00', 3, 1, 'fase de grupos'),
(1, 1, 3, '2026-05-03 14:00:00', 2, 4, 'fase de grupos'),
(1, 1, 4, '2026-05-04 14:00:00', 0, 2, 'fase de grupos'),
(1, 2, 3, '2026-05-05 14:00:00', 3, 2, 'fase de grupos'),
(1, 2, 4, '2026-05-06 14:00:00', 1, 3, 'fase de grupos'),
(1, 3, 4, '2026-05-07 14:00:00', 0, 2, 'fase de grupos');

-- ROUND-ROBIN : [5-8]
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) 
VALUES (1, 5, 6, '2026-05-02 17:00:00', 2, 1, 'fase de grupos'),
(1, 5, 7, '2026-05-03 17:00:00', 2, 3, 'fase de grupos'),
(1, 5, 8, '2026-05-04 17:00:00', 0, 1, 'fase de grupos'),
(1, 6, 7, '2026-05-05 17:00:00', 1, 4, 'fase de grupos'),
(1, 6, 8, '2026-05-06 17:00:00', 3, 2, 'fase de grupos'),
(1, 7, 8, '2026-05-07 17:00:00', 5, 2, 'fase de grupos');

--SEMIFINAL (avanzan los dos mejores de cada grupo)
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase)
VALUES (1, 4, 7, '2026-05-10 14:00:00', 3, 5, 'semifinal'),
(1, 4, 8, '2026-05-11 14:30:00', 2, 3, 'semifinal'),
(1, 2, 7, '2026-05-12 14:00:00', 2, 4, 'semifinal'),
(1, 2, 8, '2026-05-13 14:30:00', 4, 1, 'semifinal');

--FINAL
INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase)
VALUES (1, 2, 7, '2026-05-15 12:00:00', 4, 6, 'final');

--ESTADISTICAS
-- ROUND-ROBIN : [1-4] 
-- Partida 1: Mugiwaras (1-5) / Avengers (6-10)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(1, 1, 15, 2, 5), (1, 2, 12, 1, 3), (1, 3, 10, 0, 4), (1, 4, 8, 0, 10), (1, 5, 13, 2, 3), -- Equipo 1
(1, 6, 9, 6, 2), (1, 7, 7, 8, 4), (1, 8, 11, 5, 3), (1, 9, 10, 7, 1), (1, 10, 4, 9, 5); -- Equipo 2

-- Partida 2: Mugiwaras (1-5) / TheOffice (11-15)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(2, 1, 10, 3, 8), (2, 2, 9, 2, 4), (2, 3, 14, 1, 2), (2, 4, 5, 4, 12), (2, 5, 11, 2, 6), -- Equipo 1
(2, 11, 8, 5, 3), (2, 12, 6, 7, 5), (2, 13, 12, 4, 2), (2, 14, 9, 6, 4), (2, 15, 7, 8, 1); -- Equipo 3

-- Partida 3: Mugiwaras (1-5) / GossipGirl (16-20)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(3, 1, 18, 1, 4), (3, 2, 14, 0, 5), (3, 3, 9, 3, 2), (3, 4, 7, 2, 9), (3, 5, 12, 1, 7), -- Equipo 1
(3, 16, 5, 9, 4), (3, 17, 8, 6, 2), (3, 18, 10, 5, 3), (3, 19, 6, 7, 6), (3, 20, 4, 10, 1); -- Equipo 4

-- Partida 4: Avengers (6-10) / TheOffice (11-15)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(4, 6, 12, 3, 5), (4, 7, 10, 4, 2), (4, 8, 15, 2, 4), (4, 9, 8, 3, 7), (4, 10, 9, 5, 3), -- Equipo 2
(4, 11, 11, 4, 6), (4, 12, 7, 6, 8), (4, 13, 13, 3, 2), (4, 14, 10, 5, 4), (4, 15, 6, 8, 5); -- Equipo 3

-- Partida 5: Avengers (6-10) / GossipGirl (16-20)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(5, 6, 14, 2, 4), (5, 7, 11, 3, 6), (5, 8, 13, 1, 5), (5, 9, 9, 4, 8), (5, 10, 10, 2, 3), -- Equipo 2
(5, 16, 7, 6, 2), (5, 17, 5, 8, 4), (5, 18, 9, 5, 3), (5, 19, 8, 7, 5), (5, 20, 6, 9, 2); -- Equipo 4

-- Partida 6: TheOffice (11-15) / GossipGirl (16-20)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(6, 11, 16, 1, 3), (6, 12, 12, 2, 5), (6, 13, 10, 0, 7), (6, 14, 9, 3, 4), (6, 15, 11, 2, 2), -- Equipo 3
(6, 16, 8, 5, 6), (6, 17, 7, 7, 3), (6, 18, 11, 4, 2), (6, 19, 6, 6, 8), (6, 20, 5, 8, 4); -- Equipo 4

-- ROUND-ROBIN : [5-8] 
-- Partida 7: TheWalkingDead (21-25) / PeakyBlinders (26-30)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(7, 21, 13, 3, 6), (7, 22, 10, 4, 4), (7, 23, 15, 2, 2), (7, 24, 8, 5, 9), (7, 25, 11, 3, 5), -- Equipo 5
(7, 26, 12, 4, 4), (7, 27, 9, 6, 5), (7, 28, 14, 3, 3), (7, 29, 10, 5, 2), (7, 30, 7, 7, 6); -- Equipo 6

-- Partida 8: TheWalkingDead (21-25) / TVD (31-35)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(8, 21, 14, 2, 5), (8, 22, 12, 3, 3), (8, 23, 11, 1, 4), (8, 24, 7, 4, 10), (8, 25, 13, 2, 4), -- Equipo 5
(8, 31, 9, 5, 2), (8, 32, 8, 7, 5), (8, 33, 12, 4, 3), (8, 34, 10, 6, 1), (8, 35, 6, 8, 4); -- Equipo 7

-- Partida 9: TheWalkingDead (21-25) / UpsideDown (36-40)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(9, 21, 17, 1, 4), (9, 22, 13, 2, 6), (9, 23, 10, 0, 5), (9, 24, 6, 3, 11), (9, 25, 12, 2, 3), -- Equipo 5
(9, 36, 5, 8, 3), (9, 37, 7, 6, 5), (9, 38, 11, 5, 2), (9, 39, 9, 7, 4), (9, 40, 4, 10, 6); -- Equipo 8

-- Partida 10: PeakyBlinders (26-30) / TVD (31-35)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(10, 26, 15, 2, 4), (10, 27, 11, 3, 7), (10, 28, 14, 1, 3), (10, 29, 10, 4, 5), (10, 30, 9, 2, 6), -- Equipo 6
(10, 31, 8, 6, 3), (10, 32, 7, 8, 5), (10, 33, 11, 5, 2), (10, 34, 10, 7, 4), (10, 35, 6, 9, 3); -- Equipo 7

-- Partida 11: PeakyBlinders (26-30) / UpsideDown (36-40)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(11, 26, 13, 3, 5), (11, 27, 10, 4, 4), (11, 28, 16, 2, 2), (11, 29, 9, 5, 8), (11, 30, 11, 3, 4), -- Equipo 6
(11, 36, 7, 7, 4), (11, 37, 6, 9, 6), (11, 38, 12, 5, 3), (11, 39, 10, 6, 2), (11, 40, 5, 11, 5); -- Equipo 8

-- Partida 12: TVD (31-35) / UpsideDown (36-40)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(12, 31, 12, 4, 6), (12, 32, 10, 5, 4), (12, 33, 14, 3, 3), (12, 34, 9, 6, 7), (12, 35, 11, 4, 5), -- Equipo 7
(12, 36, 11, 5, 4), (12, 37, 8, 7, 6), (12, 38, 13, 4, 2), (12, 39, 10, 6, 3), (12, 40, 7, 8, 5); -- Equipo 8

--SEMIFINAL 
-- Partida 13: GossipGirl (16-20) / TVD (31-35)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(13, 16, 10, 5, 7), (13, 17, 8, 6, 4), (13, 18, 13, 4, 2), (13, 19, 9, 7, 5), (13, 20, 7, 9, 3), -- Equipo 4
(13, 31, 14, 3, 5), (13, 32, 11, 4, 8), (13, 33, 12, 2, 4), (13, 34, 10, 5, 6), (13, 35, 9, 4, 2); -- Equipo 7

-- Partida 14: GossipGirl (16-20) / UpsideDown (36-40)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(14, 16, 11, 4, 6), (14, 17, 9, 5, 5), (14, 18, 14, 3, 3), (14, 19, 10, 6, 8), (14, 20, 8, 7, 4), -- Equipo 4
(14, 36, 12, 4, 5), (14, 37, 9, 6, 7), (14, 38, 11, 5, 4), (14, 39, 8, 7, 3), (14, 40, 6, 9, 6); -- Equipo 8

-- Partida 15: Avengers (6-10) / TVD (31-35)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(16, 6, 14, 2, 5), (16, 7, 11, 3, 4), (16, 8, 13, 2, 6), (16, 9, 10, 4, 8), (16, 10, 12, 2, 3), -- Equipo 2
(16, 31, 10, 5, 4), (16, 32, 8, 6, 6), (16, 33, 11, 4, 3), (16, 34, 9, 7, 5), (16, 35, 7, 8, 2); -- Equipo 7

-- Partida 16: Avengers (6-10) / UpsideDown (36-40)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(15, 6, 16, 1, 4), (15, 7, 13, 2, 6), (15, 8, 15, 1, 3), (15, 9, 11, 3, 7), (15, 10, 10, 2, 5), -- Equipo 2
(15, 36, 7, 8, 4), (15, 37, 6, 9, 5), (15, 38, 9, 7, 3), (15, 39, 8, 10, 4), (15, 40, 5, 12, 2); -- Equipo 8

-- Partida 17: Avengers (6-10) / TVD (31-35)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(17, 6, 15, 1, 3), (17, 7, 13, 2, 4), (17, 8, 17, 0, 2), (17, 9, 11, 2, 5), (17, 10, 12, 1, 4), -- Equipo 2
(17, 31, 8, 6, 4), (17, 32, 6, 7, 5), (17, 33, 10, 5, 3), (17, 34, 7, 8, 6), (17, 35, 5, 9, 7); -- Equipo 7