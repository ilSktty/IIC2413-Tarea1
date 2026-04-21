----------------------------------------------------
-- Asignación Torneos (3), Equipos (10), Jugadores (50) y Sponsors(5)
----------------------------------------------------

INSERT INTO Torneos (nombre, videojuego, fecha_inicio, fecha_fin, prize_pool_usd, max_equipos) VALUES 
('Copa Grand Prix', 'Mario Kart', '2026-05-01', '2026-05-15', 50000.00, 8),
('ArenaKing', 'Mario Kart', '2026-06-10', '2026-06-20', 25000.00, 8),
('Los Champions de la Champions', 'EA Sports FC 26', '2026-07-05', '2026-07-15', 100000.00, 8);

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

-- Asignación capitanes: se elige al primero que la bdd encuentre en su índice para ese equipo.
UPDATE Equipos SET id_capitan = (SELECT id_jugador FROM Jugadores WHERE id_equipo = Equipos.id_equipo LIMIT 1);

INSERT INTO Sponsors (nombre, industria) VALUES 
('Netflix', 'Entretención'), 
('Red Bull', 'Bebidas'),
('Stark Industries', 'Tecnología'),
('Dunder Mifflin', 'Papel'),
('Shelby Company Ltd', 'Logística');

INSERT INTO Auspicios (id_sponsor, id_torneo, monto_usd) VALUES 
(1, 1, 15000.00), -- Netflix torneo 1
(1, 2, 10000.00), -- Netflix torneo 2
(2, 1, 5000.00), -- Redbull torneo 1
(4, 2, 12000.00), -- Dunder Mifflin torneo 2
(3, 3, 20000.00), -- Stark Industries torneo 3
(5, 3, 30000.00); -- Shelby Company torneo 3



--------------------------------------------------------------------
-- Torneo 1: Copa Grand Prix (id: 1). Inscripciones llenas y fases (19 partidas).
--------------------------------------------------------------------
INSERT INTO Inscripciones (id_torneo, id_equipo) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8);

INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 1, 2, '2026-05-02 14:00', 3, 1, 'fase de grupos'), -- Partida 1
(1, 3, 4, '2026-05-02 15:00', 0, 2, 'fase de grupos'), -- Partida 2
(1, 1, 3, '2026-05-03 14:00', 2, 4, 'fase de grupos'), -- Partida 3
(1, 2, 4, '2026-05-03 15:00', 1, 3, 'fase de grupos'), -- Partida 4
(1, 1, 4, '2026-05-04 14:00', 0, 2, 'fase de grupos'), -- Partida 5
(1, 2, 3, '2026-05-04 15:00', 3, 2, 'fase de grupos'); -- Partida 6
-- Clasifican Grupo A: 1° Gossip Girl (Eq 4), 2° The Office (Eq 3)

INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 5, 6, '2026-05-02 16:00', 2, 1, 'fase de grupos'), -- Partida 7
(1, 7, 8, '2026-05-02 17:00', 5, 2, 'fase de grupos'), -- Partida 8
(1, 5, 7, '2026-05-03 16:00', 2, 3, 'fase de grupos'), -- Partida 9
(1, 6, 8, '2026-05-03 17:00', 3, 2, 'fase de grupos'), -- Partida 10
(1, 5, 8, '2026-05-04 16:00', 0, 1, 'fase de grupos'), -- Partida 11
(1, 6, 7, '2026-05-04 17:00', 1, 4, 'fase de grupos'); -- Partida 12
-- Clasifican Grupo B: 1° TVD (Eq 7), 2° Peaky Blinders (Eq 6)

INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 4, 6, '2026-05-10 15:00:00', 3, 1, 'semifinal'), -- Gana Eq 4
(1, 7, 3, '2026-05-10 17:00:00', 2, 0, 'semifinal'); -- Gana Eq 7

INSERT INTO Partidas (id_torneo, id_equipo_a, id_equipo_b, fecha_hora, score_a, score_b, fase) VALUES 
(1, 4, 7, '2026-05-12 20:00:00', 2, 3, 'final');
-- Resultado: TVD (Eq 7) campeón



------------------------
-- Estadísticas Torneo 1
------------------------
-- fase de grupos | Grupo A.
-- Partida 1: Mugiwaras (Equipo 1) vs Avengers (Equipo 2) -> Gana Mugiwaras 3-1
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(1, 1, 16, 1, 5), (1, 2, 13, 2, 6), (1, 3, 15, 1, 3), (1, 4, 11, 3, 7), (1, 5, 12, 2, 5), 
(1, 6, 7, 8, 4), (1, 7, 6, 9, 5), (1, 8, 9, 7, 3), (1, 9, 8, 10, 4), (1, 10, 5, 12, 2);

-- Partida 2: The Office (Eq 3) vs Gossip Girl (Eq 4) -> Gana Eq 4 (0-2)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(2, 11, 5, 8, 3), (2, 12, 4, 9, 2), (2, 13, 6, 7, 4), (2, 14, 3, 10, 5), (2, 15, 2, 12, 1), -- Eq 3
(2, 16, 12, 2, 6), (2, 17, 14, 1, 4), (2, 18, 10, 3, 8), (2, 19, 11, 2, 5), (2, 20, 13, 1, 3); -- Eq 4

-- Partida 3: Mugiwaras (Eq 1) vs The Office (Eq 3) -> Gana Eq 3 (2-4)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(3, 1, 8, 6, 4), (3, 2, 7, 7, 5), (3, 3, 9, 5, 3), (3, 4, 6, 8, 6), (3, 5, 5, 9, 2), -- Eq 1
(3, 11, 15, 3, 4), (3, 12, 12, 4, 6), (3, 13, 14, 2, 5), (3, 14, 11, 5, 7), (3, 15, 10, 4, 8); -- Eq 3

-- Partida 4: Avengers (Eq 2) vs Gossip Girl (Eq 4) -> Gana Eq 4 (1-3)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(4, 6, 7, 9, 3), (4, 7, 6, 10, 4), (4, 8, 8, 8, 2), (4, 9, 5, 11, 5), (4, 10, 4, 12, 1), -- Eq 2
(4, 16, 16, 2, 4), (4, 17, 13, 3, 6), (4, 18, 15, 1, 5), (4, 19, 11, 4, 7), (4, 20, 12, 2, 8); -- Eq 4

-- Partida 5: Mugiwaras (Eq 1) vs Gossip Girl (Eq 4) -> Gana Eq 4 (0-2)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(5, 1, 4, 10, 2), (5, 2, 3, 12, 3), (5, 3, 5, 9, 1), (5, 4, 2, 11, 4), (5, 5, 4, 13, 2), -- Eq 1
(5, 16, 14, 1, 5), (5, 17, 12, 2, 4), (5, 18, 11, 1, 6), (5, 19, 10, 3, 5), (5, 20, 13, 2, 3); -- Eq 4

-- Partida 6: Avengers (Eq 2) vs The Office (Eq 3) -> Gana Eq 2 (3-2)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(6, 6, 13, 4, 6), (6, 7, 11, 5, 7), (6, 8, 12, 3, 5), (6, 9, 10, 6, 4), (6, 10, 9, 7, 8), -- Eq 2
(6, 11, 10, 6, 3), (6, 12, 8, 7, 4), (6, 13, 9, 5, 5), (6, 14, 7, 8, 6), (6, 15, 6, 9, 2); -- Eq 3

-- fase de grupos | Grupo B.
-- Partida 7: The Walking Dead (Eq 5) vs Peaky Blinders (Eq 6) -> Gana Eq 5 (2-1)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(7, 21, 14, 2, 5), (7, 22, 12, 3, 4), (7, 23, 11, 2, 6), (7, 24, 10, 4, 3), (7, 25, 9, 3, 5), -- Eq 5
(7, 26, 10, 5, 4), (7, 27, 8, 6, 3), (7, 28, 9, 4, 5), (7, 29, 7, 7, 2), (7, 30, 6, 8, 4); -- Eq 6

-- Partida 8: TVD (Eq 7) vs UpsideDown (Eq 8) -> Gana Eq 7 (5-2)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(8, 31, 19, 1, 7), (8, 32, 16, 2, 5), (8, 33, 15, 1, 8), (8, 34, 14, 2, 4), (8, 35, 13, 1, 6), -- Eq 7
(8, 36, 8, 9, 3), (8, 37, 7, 10, 4), (8, 38, 9, 8, 2), (8, 39, 6, 11, 5), (8, 40, 5, 12, 3); -- Eq 8

-- Partida 9: The Walking Dead (Eq 5) vs TVD (Eq 7) -> Gana Eq 7 (2-3)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(9, 21, 11, 5, 4), (9, 22, 10, 6, 3), (9, 23, 12, 4, 5), (9, 24, 9, 7, 2), (9, 25, 8, 6, 4),  -- Eq 5
(9, 31, 15, 2, 6), (9, 32, 14, 3, 5), (9, 33, 13, 2, 7), (9, 34, 11, 4, 4), (9, 35, 12, 3, 6); -- Eq 7

-- Partida 10: Peaky Blinders (Eq 6) vs UpsideDown (Eq 8) -> Gana Eq 6 (3-2)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(10, 26, 14, 3, 6), (10, 27, 12, 4, 5), (10, 28, 11, 3, 7), (10, 29, 10, 5, 4), (10, 30, 9, 4, 6), -- Eq 6
(10, 36, 10, 6, 3), (10, 37, 8, 7, 4), (10, 38, 9, 5, 5), (10, 39, 7, 8, 6), (10, 40, 6, 9, 2); -- Eq 8

-- Partida 11: The Walking Dead (Eq 5) vs UpsideDown (Eq 8) -> Gana Eq 8 (0-1)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(11, 21, 7, 8, 3), (11, 22, 6, 9, 2), (11, 23, 8, 7, 4), (11, 24, 5, 10, 5), (11, 25, 4, 11, 2), -- Eq 5
(11, 36, 11, 3, 5), (11, 37, 10, 4, 4), (11, 38, 12, 2, 6), (11, 39, 9, 5, 3), (11, 40, 8, 4, 7); -- Eq 8

-- Partida 12: Peaky Blinders (Eq 6) vs TVD (Eq 7) -> Gana Eq 7 (1-4)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(12, 26, 9, 8, 4), (12, 27, 7, 9, 3), (12, 28, 8, 7, 5), (12, 29, 6, 10, 4), (12, 30, 5, 11, 2), -- Eq 6
(12, 31, 17, 1, 6), (12, 32, 15, 2, 5), (12, 33, 16, 1, 7), (12, 34, 14, 2, 8), (12, 35, 13, 2, 5); -- Eq 7

-- Semis: Partida 13 y 14
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
-- Semi 1: Gossip Girl (Eq 4) vs Peaky Blinders (Eq 6) -> Gana Eq 4 (3-1)
(13, 16, 18, 2, 8), (13, 17, 15, 3, 9), (13, 18, 12, 4, 10), (13, 19, 14, 2, 5), (13, 20, 11, 3, 7), -- Eq 4
(13, 26, 12, 6, 4), (13, 27, 10, 7, 5), (13, 28, 9, 8, 3), (13, 29, 8, 6, 4), (13, 30, 7, 9, 6); -- Eq 6
-- Semi 2: TVD (Eq 7) vs The Office (Eq 3) -> Gana Eq 7 (2-0)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(14, 31, 20, 1, 5), (14, 32, 19, 2, 4), (14, 33, 14, 1, 9), (14, 34, 15, 2, 6), (14, 35, 12, 2, 10), -- Eq 7
(14, 11, 7, 10, 3), (14, 12, 6, 11, 4), (14, 13, 5, 12, 5), (14, 14, 8, 9, 2), (14, 15, 4, 13, 3); -- Eq 3

-- Final: Partida 15
-- Gossip Girl (Eq 4) vs TVD (Eq 7) -> CAMPEÓN Eq 7 (2-3)
INSERT INTO Estadisticas (id_partida, id_jugador, kos, restarts, assists) VALUES 
(15, 16, 17, 5, 7), (15, 17, 16, 4, 8), (15, 18, 14, 6, 6), (15, 19, 13, 5, 9), (15, 20, 12, 7, 5),  -- Eq 4
(15, 31, 22, 3, 6), (15, 32, 21, 4, 5), (15, 33, 18, 2, 11), (15, 34, 19, 3, 8), (15, 35, 16, 4, 12); -- Eq 7


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
