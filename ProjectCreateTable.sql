/*Updated the code to include integrity constraints and new foreign keys*/
CREATE TABLE Company (
	name CHAR(50) PRIMARY KEY,
	founding_yr INT,
	parent_company CHAR(50),
	FOREIGN KEY (parent_company) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Game (
	gm_id INT PRIMARY KEY,
	developer CHAR(50),
	publisher CHAR(50),
	name CHAR(50),
	rel_year INT,
	FOREIGN KEY (developer) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (publisher) REFERENCES Company(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Series (
	s_id INT PRIMARY KEY,
	name CHAR(50)
);

CREATE TABLE made_of (
	id INT PRIMARY KEY,
	s_id INT,
	gm_id INT,
	FOREIGN KEY (s_id) REFERENCES Series(s_id)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (gm_id) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Console (
	name CHAR(50) PRIMARY KEY,
	console_developer CHAR(50),
	rel_yr INT,
	eol_yr INT,
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

CREATE TABLE Genre (
	name CHAR(50),
	genre_id INT PRIMARY KEY,
);

CREATE TABLE Game_Genre (
	id INT PRIMARY KEY,
	gn_id INT,
	gm_id INT,
	FOREIGN KEY (gn_id) REFERENCES Genre(genre_id)
	ON DELETE Cascade ON UPDATE Cascade,
	FOREIGN KEY (gm_id) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

/*****Optional Relationship Model Code. Removed becuase it wasn't on the relation model******/
/*CREATE TABLE Playable_on_Console (
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
);*/