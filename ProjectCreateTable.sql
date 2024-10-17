<<<<<<< HEAD
/*OLD CODE*/
/*CREATE TABLE Company (
	name CHAR(20) PRIMARY KEY,
=======
drop table Playable_on_Console, Playable_on_Emulator, Genres, Emulator, Console, Series, Game, Company;

CREATE TABLE Company (
	name CHAR(50) PRIMARY KEY,
>>>>>>> b888137cadb9f19deb7db6549eee68fe5d76592d
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

<<<<<<< HEAD
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
=======
CREATE TABLE Genres (
	genreName CHAR(50),
	gameID INT,
	FOREIGN KEY (gameID) REFERENCES Game(gm_id)
);

CREATE TABLE Series (
	name CHAR(50),
	game INT PRIMARY KEY,
	FOREIGN KEY (game) REFERENCES Game(gm_id)
>>>>>>> b888137cadb9f19deb7db6549eee68fe5d76592d
);

CREATE TABLE Console (
	rel_yr INT,
	eol_yr INT,
<<<<<<< HEAD
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
=======
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
>>>>>>> b888137cadb9f19deb7db6549eee68fe5d76592d
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