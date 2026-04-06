-- INSERTAR TORNEOS (3)
INSERT INTO Torneos (nombre, videojuego, fecha_inicio, fecha_fin, prize_pool_usd, max_equipos) VALUES 
('Copa Grand Prix', 'Mario Kart', '2026-05-01', '2026-05-15', 50000.00, 8),
('ArenaKing', 'Clash Royale', '2026-06-10', '2026-06-20', 25000.00, 16),
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

-- INSERTAR JUGADORES
-- Equipo 1: Mugiwaras
INSERT INTO Jugadores (gamertag, nombre_real, email, fecha_nacimiento, pais, id_equipo) VALUES 
('StrawHat', 'Monkey D. Luffy', 'luffy@onepiece.com', '2004-05-05', 'Japón', 1),
('PirateHunter', 'Roronoa Zoro', 'zoro@onepiece.com', '2004-11-11', 'Japón', 1),
('CatBurglar', 'Nami', 'nami@onepiece.com', '2004-07-03', 'Japón', 1),
('BlackLeg', 'Vinsmoke Sanji', 'sanji@onepiece.com', '2004-03-02', 'Japón', 1),
('CottonCandyLover', 'Tony Tony Chopper', 'chopper@onepiece.com', '2004-12-24', 'Japón', 1),
('SniperKing', 'Usopp', 'usopp@onepiece.com', '2004-04-01', 'Japón', 1),
('DemonChild', 'Nico Robin', 'robin@onepiece.com', '2004-02-06', 'Japón', 1),
('IronManFranky', 'Franky', 'franky@onepiece.com', '2004-03-09', 'Japón', 1);
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