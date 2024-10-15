CREATE TABLE Company (
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
);
