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
	FOREIGN KEY (developer) REFERENCES Company(name),
	FOREIGN KEY (publisher) REFERENCES Company(name)
);

CREATE TABLE Genres (
	genreID INT PRIMARY KEY,
	gameID INT,
	FOREIGN KEY (gameID) REFERENCES Game(gm_id)
);

CREATE TABLE Series (
	name CHAR(50),
	game INT PRIMARY KEY,
	FOREIGN KEY (game) REFERENCES Game(gm_id)
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
	emulated_console CHAR(50),
	int_rel INT,
	license CHAR(50),
	current_rel_ver CHAR(50),
	website CHAR(100),
	FOREIGN KEY (emulated_console) REFERENCES Console(name)
);
