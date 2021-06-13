-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/p8FZ8O
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "QB_NAMES" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_QB_NAMES" PRIMARY KEY (
        "Player_id"
     )
);

CREATE TABLE "QB" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    "Position" varchar(20)   NOT NULL,
    "Year" int   NOT NULL,
    "Season" varchar(20)   NOT NULL,
    "Games_Played" int   NOT NULL,
    "Games_Started" int   NOT NULL,
    "Passes_Completed" int   NOT NULL,
    "Passes_Attempted" int   NOT NULL
);

CREATE TABLE "RUSHERS_NAMES" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_RUSHERS_NAMES" PRIMARY KEY (
        "Player_id"
     )
);

CREATE TABLE "RUSHERS" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    "Position" varchar(20)   NOT NULL,
    "Year" int   NOT NULL,
    "Season" varchar(20)   NOT NULL,
    "Games_Played" int   NOT NULL,
    "Games_Started" int   NOT NULL,
    "Passes_Completed" int   NOT NULL,
    "Rushing_TDs" int   NOT NULL,
    "Receptions" int   NOT NULL
);

CREATE TABLE "RECIVERS_NAMES" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_RECIVERS_NAMES" PRIMARY KEY (
        "Player_id"
     )
);

CREATE TABLE "RECIVERS" (
    "Player_id" varchar(20)   NOT NULL,
    "Name" varchar(20)   NOT NULL,
    "Position" varchar(20)   NOT NULL,
    "Year" int   NOT NULL,
    "Season" varchar(20)   NOT NULL,
    "Games_Played" int   NOT NULL,
    "Games_Started" int   NOT NULL,
    "Receiving_Yards" int   NOT NULL,
    "Receiving_TDs" int   NOT NULL
);

ALTER TABLE "QB" ADD CONSTRAINT "fk_QB_Player_id" FOREIGN KEY("Player_id")
REFERENCES "QB_NAMES" ("Player_id");

ALTER TABLE "RUSHERS" ADD CONSTRAINT "fk_RUSHERS_Player_id" FOREIGN KEY("Player_id")
REFERENCES "RUSHERS_NAMES" ("Player_id");

ALTER TABLE "RECIVERS" ADD CONSTRAINT "fk_RECIVERS_Player_id" FOREIGN KEY("Player_id")
REFERENCES "RECIVERS_NAMES" ("Player_id");


SELECT * FROM "QB"
SELECT * FROM "QB_NAMES"
SELECT * FROM "RECIVERS"
SELECT * FROM "RECIVERS_NAMES"
SELECT * FROM "RUSHERS"
SELECT * FROM "RUSHERS_NAMES"
