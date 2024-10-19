drop table Made_of, Playable_on_Console, Playable_on_Emulator, Genres, Emulator, Console, Series, Game, Company;

CREATE TABLE Company (
	name VARCHAR(50) PRIMARY KEY,
	founding_yr INT,
	parent_company VARCHAR(50),
	FOREIGN KEY (parent_company) REFERENCES Company(name)
);

CREATE TABLE Game (
	gm_id INT PRIMARY KEY,
	developer VARCHAR(50),
	publisher VARCHAR(50),
	name VARCHAR(50),
	rel_year INT,
	FOREIGN KEY (developer) REFERENCES Company(name),
	FOREIGN KEY (publisher) REFERENCES Company(name)
);

CREATE TABLE Series (
	gm_id INT,
	s_name VARCHAR(50),
	PRIMARY KEY(gm_id, s_name),
	FOREIGN KEY (gm_id) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Console (
	name VARCHAR(50) PRIMARY KEY,
	console_developer VARCHAR(50),
	rel_yr INT,
	eol_yr INT,
	FOREIGN KEY (console_developer) references Company(name)
);

CREATE TABLE Emulator (
	name VARCHAR(50) PRIMARY KEY,
	emulated_console VARCHAR(50) NOT NULL,
	int_rel INT,
	license VARCHAR(100),
	current_rel_ver VARCHAR(50),
	website VARCHAR(255),
	FOREIGN KEY (emulated_console) REFERENCES Console(name)
	ON DELETE Cascade ON UPDATE Cascade
);

CREATE TABLE Genre (
	gm_id INT,
	gn_name VARCHAR(20),
	PRIMARY KEY (gm_id, gn_name),
	FOREIGN KEY (gm_id) REFERENCES Game(gm_id)
	ON DELETE Cascade ON UPDATE Cascade
);