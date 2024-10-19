drop table Made_of, Playable_on_Console, Playable_on_Emulator, Genres, Emulator, Console, Series, Game, Company;

CREATE TABLE Company (
	name CHAR(50) PRIMARY KEY,
	founding_yr INT,
	parent_company CHAR(50),
	FOREIGN KEY (parent_company) REFERENCES Company(name)
);

CREATE TABLE Game (
	developer CHAR(50),
	publisher CHAR(50),
	gm_id INT PRIMARY KEY,
	name CHAR(50),
	rel_year INT,
	FOREIGN KEY (developer) REFERENCES Company(name),
	FOREIGN KEY (publisher) REFERENCES Company(name)
);

CREATE TABLE Genres (
	genreName CHAR(50),
	gameID INT,
	FOREIGN KEY (gameID) REFERENCES Game(gm_id)
);

CREATE TABLE Series (
	name CHAR(50),
	s_id INT PRIMARY KEY
);

CREATE TABLE Made_of (
	id INT primary key,
	s_id INT,
	gm_id INT,
	Foreign key (gm_id) references Game(gm_id),
	FOREIGN KEY (s_id) REFERENCES Series(s_id)
);

CREATE TABLE Console (
	rel_yr INT,
	eol_yr INT,
	name CHAR(50) PRIMARY KEY,
	console_developer CHAR(50),
	FOREIGN KEY (console_developer) references Company(name)
);

CREATE TABLE Emulator (
	name CHAR(50) PRIMARY KEY,
	emulated_console CHAR(50) NOT NULL,
	int_rel INT,
	license CHAR(100),
	current_rel_ver CHAR(50),
	website CHAR(100),
	FOREIGN KEY (emulated_console) REFERENCES Console(name)
);

CREATE TABLE Playable_on_Console (
	console CHAR(50),
	gameID INT,
	FOREIGN KEY (console) REFERENCES Console(name),
	FOREIGN KEY (gameID) references Game(gm_id)
);

CREATE TABLE Playable_on_Emulator (
	emulator CHAR(50),
	gameID INT,
	FOREIGN KEY (emulator) REFERENCES Emulator(name),
	FOREIGN KEY (gameID) references Game(gm_id)
);
