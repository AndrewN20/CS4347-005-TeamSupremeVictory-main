/*OLD CODE*/
/*CREATE TABLE Company (
	name CHAR(20) PRIMARY KEY,
	founding_yr INT,
	parent_company CHAR(20)
);

CREATE TABLE Game (
	developer CHAR(20),
	publisher CHAR(20),
	gm_id CHAR(20) PRIMARY KEY,
	name CHAR(20),
	genre CHAR(20)
);

CREATE TABLE Series (
	name CHAR(20),
	games CHAR(20) PRIMARY KEY,
	FOREIGN KEY (games) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade,
);

CREATE TABLE Emulator (
	name CHAR(20) PRIMARY KEY,
	emulated_console CHAR(20),
	int_rel INT,
	license CHAR(20),
	current_rel_ver CHAR(20),
	website CHAR(20)
);

CREATE TABLE Console (
	rel_yr INT,
	eol_yr INT,
	name CHAR(20) PRIMARY KEY,
	console_developer CHAR(20),
	FOREIGN KEY (name) references Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);*/

/*drop table Playable_on_Console, Playable_on_Emulator, Genres, Emulator, Console, Series, Game, Company;*/

/*Updated the code to include integrity constraints*/
CREATE TABLE Company (
	name CHAR(50) PRIMARY KEY,
	founding_yr INT,
	parent_company CHAR(50),
	FOREIGN KEY (parent_company) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Game (
	developer CHAR(50),
	publisher CHAR(50),
	gm_id INT PRIMARY KEY,
	name CHAR(50),
	rel_year INT,
	FOREIGN KEY (developer) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (publisher) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Genres (
	genreName CHAR(50),
	gameID INT,
	FOREIGN KEY (gameID) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Series (
	name CHAR(50),
	game INT PRIMARY KEY,
	FOREIGN KEY (game) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Console (
	rel_yr INT,
	eol_yr INT,
	name CHAR(50) PRIMARY KEY,
	console_developer CHAR(50),
	FOREIGN KEY (console_developer) references Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Emulator (
	name CHAR(50) PRIMARY KEY,
	emulated_console CHAR(50) NOT NULL,
	int_rel INT,
	license CHAR(100),
	current_rel_ver CHAR(50),
	website CHAR(100),
	FOREIGN KEY (emulated_console) REFERENCES Console(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Playable_on_Console (
	console CHAR(50),
	gameID INT,
	FOREIGN KEY (console) REFERENCES Console(name)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (gameID) references Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Playable_on_Emulator (
	emulator CHAR(50),
	gameID INT,
	FOREIGN KEY (emulator) REFERENCES Emulator(name)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (gameID) references Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);