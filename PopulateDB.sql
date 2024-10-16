insert into Company (name, founding_yr, parent_company) values 
('Nintendo', 1889, NULL),
('Game Freak', 1989, NULL),
('Take-Two Interactive', 1993, NULL),
('Rockstar Games', 1998, 'Take-Two Interactive'),
('Rockstar North', 1988, 'Rockstar Games'),
('Microsoft', 1975, NULL),
('2K Games', 2005, 'Take-Two Interactive'),
('MicroProse', 1982, NULL),
('FirAxis Games', 1996, 'Take-Two Interactive'),
('Hasbro', 1923, NULL),
('Hasbro Interactive', 1996, 'Hasbro'),
('Atari', 1983, NULL),
('Sony Group Corporation', 1946, NULL),
('Sony Interactive Entertainment', 2016, 'Sony Group Corporation'),
('Sony Computer Entertainment', 1993, 'Sony Group Corporation'),
('Keywords Studio', 1998, NULL),
('Tantalus Media', 1994, 'Keywords Studio');

insert into Game (gm_id, name, developer, publisher, rel_year) values 
(1, 'Pokemon Gold', 'Game Freak', 'Nintendo', 1999),
(2, 'Pokemon Silver', 'Game Freak', 'Nintendo', 1999),
(3, 'Grand Theft Auto: Vice City', 'Rockstar North', 'Rockstar Games', 2002),
(4, 'Grand Theft Auto: San Andreas', 'Rockstar North', 'Rockstar Games', 2004),
(5, 'Sid Meyer''s Civilization', 'MicroProse', 'MicroProse', 1991),
(6, 'Sid Meyer''s Civilization II', 'FirAxis Games', 'Hasbro Interactive', 1996),
(7, 'Sid Meyer''s Civilization III', 'FirAxis Games', 'Atari', 2001),
(8, 'Sid Meyer''s Civilization IV', 'FirAxis Games', '2K Games', 2010),
(9, 'Sid Meyer''s Civilization V', 'FirAxis Games', '2K Games', 2010),
(10, 'Sid Meyer''s Civilization VI', 'FirAxis Games', '2K Games', 2016),
(11, 'The Legend of Zelda: Breath of the Wild', 'Nintendo', 'Nintendo', 2017),
(12, 'The Legend of Zelda: Twilight Princess HD', 'Tantalus Media', 'Nintendo', 2016);

insert into Genres (genreName, gameID) values 
('RPG', 1),
('Adventure', 1),
('Strategy', 1),
('Collectathon', 1),
('RPG', 2),
('Adventure', 2),
('Strategy', 2),
('Collectathon', 2),
('RPG', 3),
('Action-Adventure', 3),
('Action-Adventure', 4),
('RPG', 4),
('Turn-Based Strategy', 5),
('Turn-Based Strategy', 6),
('Turn-Based Strategy', 7),
('Turn-Based Strategy', 8),
('Turn-Based Strategy', 9),
('Turn-Based Strategy', 10),
('Action-Adventure', 11),
('RPG', 11),
('Action-Adventure', 12),
('RPG', 12);

insert into Series (name, game) values
('Pokemon', 1),
('Pokemon', 2),
('Grand Theft Auto', 3),
('Grand Theft Auto', 4),
('Civilization', 5),
('Civilization', 6),
('Civilization', 7),
('Civilization', 8),
('Civilization', 9),
('Civilization', 10),
('Legend of Zelda', 11),
('Legend of Zelda', 12);

insert into Console (rel_yr, eol_yr, name, console_developer) values 
(1999, 2003, 'Game Boy Color', 'Nintendo'),
(2000, 2013, 'PlayStation 2', 'Sony Computer Entertainment'),
(2001, 2006, 'Xbox', 'Microsoft'),
(2017, NULL, 'Nintendo Switch', 'Nintendo'),
(2013, NULL, 'PlayStation 4', 'Sony Interactive Entertainment'),
(2013, 2020, 'Xbox One', 'Microsoft'),
(2012, 2017, 'Wii U', 'Nintendo'),
(NULL, NULL, 'PC', NULL);

insert into Emulator (name, emulated_console, int_rel, license, current_rel_ver, website) values
('VisualBoy Advance', 'Game Boy Color', 2001, 'GNU General Public License', '2.1.11', 'https://visualboyadvance.org'),
('PCSX2', 'PlayStation 2', 2002, 'GNU General Public License version 3 (GPL-3.0)', 'PSCX2 2.0', 'https://pcsx2.net/'),
('DOSBox', 'PC', 2002, 'GNU General Public License version 2 (GPL-2.0)', 'DOSBox 0.74-3', 'https://www.dosbox.com/'),
('CEMU', 'Wii U', 2015, 'Proprietary License', '1.27.0', 'https://cemu.info/');

insert into Playable_on_Console (console, gameID) values 
('Game Boy Color', 1),
('Game Boy Color', 2),
('PlayStation 2', 3),
('PlayStation 2', 4),
('Xbox', 3),
('Xbox', 4),
('PC', 5),
('PC', 6),
('PC', 7),
('PC', 8),
('PC', 5),
('PC', 10),
('Nintendo Switch', 10),
('PlayStation 4', 10),
('Xbox One', 10),
('Wii U', 11),
('Wii U', 12),
('Nintendo Switch', 11);

insert into Playable_on_Emulator (emulator, gameID) values
('VisualBoy Advance', 1),
('VisualBoy Advance', 2),
('PCSX2', 3),
('PCSX2', 4),
('DOSBox', 5),
('DOSBox', 6),
('CEMU', 11),
('CEMU', 12);
