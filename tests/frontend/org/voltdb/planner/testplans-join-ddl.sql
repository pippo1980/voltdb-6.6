CREATE TABLE R1 (
	A INTEGER NOT NULL,
	C INTEGER NOT NULL,
	D INTEGER NOT NULL
);

CREATE TABLE R2 (
	A INTEGER NOT NULL,
	C INTEGER NOT NULL
);
CREATE INDEX PARTIAL_IND2 ON R2 (C) WHERE C > 100;

CREATE TABLE R3 (
	A INTEGER NOT NULL,
	C INTEGER NOT NULL
);
CREATE INDEX IND1 ON R3 (A);

CREATE TABLE R3_NOC (
  A INTEGER NOT NULL,
  NOTC INTEGER NOT NULL
);
CREATE INDEX IND2 ON R3_NOC (A);


CREATE TABLE R4 (
	A INTEGER NOT NULL,
    B INTEGER NOT NULL,
	C INTEGER NOT NULL,
	D INTEGER NOT NULL
 	, PRIMARY KEY (A,C,D)
);

CREATE TABLE R5 (
	A INTEGER NOT NULL,
    B INTEGER NOT NULL,
	C INTEGER NOT NULL,
	D INTEGER NOT NULL
 	, PRIMARY KEY (A)
);

CREATE TABLE P1 (
	A INTEGER NOT NULL,
	C INTEGER NOT NULL,

);
PARTITION TABLE P1 ON COLUMN A;

CREATE TABLE P2 (
	A INTEGER NOT NULL,
	E INTEGER NOT NULL,
	PRIMARY KEY (A)
);
PARTITION TABLE P2 ON COLUMN A;

CREATE TABLE P3 (
	A INTEGER NOT NULL,
	F INTEGER NOT NULL,
	PRIMARY KEY (A)

);
PARTITION TABLE P3 ON COLUMN A;

CREATE TABLE P4 (
	A INTEGER NOT NULL,
	E INTEGER NOT NULL,
);
PARTITION TABLE P4 ON COLUMN A;

