-- drop conditions
DROP TABLE if exists happiness_score;
DROP TABLE if exists coordinates;
DROP TABLE if exists energy_use;
DROP TABLE if exists gdp_percap;
DROP TABLE if exists mobile;

-- creating tables
CREATE TABLE happiness_score (
	"Country" varchar(100),
	"Happiness Score - 2012" FLOAT,
	"Happiness Score - 2013" FLOAT,
	"Happiness Score - 2015" FLOAT,
	"Happiness Score - 2016" FLOAT,
	"Happiness Score - 2017" FLOAT,
	"Happiness Score - 2018" FLOAT,
	"Happiness Score - 2019" FLOAT,
	"Happiness Score - 2020" FLOAT,
	"Happiness Score - 2021" FLOAT,
	"Happiness Score - 2022" FLOAT,
	"Happiness Score - 2023" FLOAT,
	"Happiness Score - 2024" FLOAT
);

CREATE TABLE coordinates (
	"Latitude" double precision,
	"Longitude" double precision,
	"Country" varchar(100)
);

CREATE TABLE energy_use (
	"series" varchar(100),
	"country" varchar(100),
	"code" varchar(5),
	"yr2000" double precision,
	"yr2001" double precision,
	"yr2002" double precision,
	"yr2003" double precision,
	"yr2004" double precision,
	"yr2005" double precision,
	"yr2006" double precision,
	"yr2007" double precision,
	"yr2008" double precision,
	"yr2009" double precision,
	"yr2010" double precision,
	"yr2011" double precision,
	"yr2012" double precision,
	"yr2013" double precision,
	"yr2014" double precision,
	"yr2015" double precision
);

CREATE TABLE gdp_percap (
	"series" varchar(100),
	"country" varchar(100),
	"code" varchar(5),
	"yr2000" double precision,
	"yr2001" double precision,
	"yr2002" double precision,
	"yr2003" double precision,
	"yr2004" double precision,
	"yr2005" double precision,
	"yr2006" double precision,
	"yr2007" double precision,
	"yr2008" double precision,
	"yr2009" double precision,
	"yr2010" double precision,
	"yr2011" double precision,
	"yr2012" double precision,
	"yr2013" double precision,
	"yr2014" double precision,
	"yr2015" double precision
);

CREATE TABLE mobile (
	"series" varchar(100),
	"country" varchar(100),
	"code" varchar(5),
	"yr2000" double precision,
	"yr2001" double precision,
	"yr2002" double precision,
	"yr2003" double precision,
	"yr2004" double precision,
	"yr2005" double precision,
	"yr2006" double precision,
	"yr2007" double precision,
	"yr2008" double precision,
	"yr2009" double precision,
	"yr2010" double precision,
	"yr2011" double precision,
	"yr2012" double precision,
	"yr2013" double precision,
	"yr2014" double precision,
	"yr2015" double precision
);

-- checking imports
SELECT * FROM happiness_score;
SELECT * FROM coordinates;
SELECT * FROM energy_use;
SELECT * FROM gdp_percap;
SELECT * FROM mobile;

-- additional checks
