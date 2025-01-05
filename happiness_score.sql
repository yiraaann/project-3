-- drop conditions
DROP TABLE if exists happiness_score;
DROP TABLE if exists coordinates;
DROP TABLE if exists energy_use;
DROP TABLE if exists gdp;
DROP TABLE if exists gdp_percap;
DROP TABLE if exists mobile;

-- creating tables
CREATE TABLE happiness_score (
	"Country" varchar(100),
	"Happiness Score - 2012" double precision,
	"Happiness Score - 2013" double precision,
	"Happiness Score - 2015" double precision,
	"Happiness Score - 2016" double precision,
	"Happiness Score - 2017" double precision,
	"Happiness Score - 2018" double precision,
	"Happiness Score - 2019" double precision,
	"Happiness Score - 2020" double precision,
	"Happiness Score - 2021" double precision,
	"Happiness Score - 2022" double precision,
	"Happiness Score - 2023" double precision,
	"Happiness Score - 2024" double precision
);

CREATE TABLE coordinates (
	"Latitude" double precision,
	"Longitude" double precision,
	"Country" varchar(100)
);

CREATE TABLE energy_use (
	"Series Name" varchar(100),
	"Series Code" varchar(50),
	"Country Name" varchar(100),
	"Country Code" varchar (5),
	"2000 [YR2000]" double precision,
	"2001 [YR2001]" double precision,
	"2002 [YR2002]" double precision,
	"2003 [YR2003]" double precision,
	"2004 [YR2004]" double precision,
	"2005 [YR2005]" double precision,
	"2006 [YR2006]" double precision,
	"2007 [YR2007]" double precision,
	"2008 [YR2008]" double precision,
	"2009 [YR2009]" double precision,
	"2010 [YR2010]" double precision,
	"2011 [YR2011]" double precision,
	"2012 [YR2012]" double precision,
	"2013 [YR2013]" double precision,
	"2014 [YR2014]" double precision,
	"2015 [YR2015]" double precision,
);

CREATE TABLE gdp (
	"Series Name" varchar(100),
	"Series Code" varchar(50),
	"Country Name" varchar(100),
	"Country Code" varchar (5),
	"2000 [YR2000]" double precision,
	"2001 [YR2001]" double precision,
	"2002 [YR2002]" double precision,
	"2003 [YR2003]" double precision,
	"2004 [YR2004]" double precision,
	"2005 [YR2005]" double precision,
	"2006 [YR2006]" double precision,
	"2007 [YR2007]" double precision,
	"2008 [YR2008]" double precision,
	"2009 [YR2009]" double precision,
	"2010 [YR2010]" double precision,
	"2011 [YR2011]" double precision,
	"2012 [YR2012]" double precision,
	"2013 [YR2013]" double precision,
	"2014 [YR2014]" double precision,
	"2015 [YR2015]" double precision,
);

CREATE TABLE gdp_percap (
	"Series Name" varchar(100),
	"Series Code" varchar(50),
	"Country Name" varchar(100),
	"Country Code" varchar (5),
	"2000 [YR2000]" double precision,
	"2001 [YR2001]" double precision,
	"2002 [YR2002]" double precision,
	"2003 [YR2003]" double precision,
	"2004 [YR2004]" double precision,
	"2005 [YR2005]" double precision,
	"2006 [YR2006]" double precision,
	"2007 [YR2007]" double precision,
	"2008 [YR2008]" double precision,
	"2009 [YR2009]" double precision,
	"2010 [YR2010]" double precision,
	"2011 [YR2011]" double precision,
	"2012 [YR2012]" double precision,
	"2013 [YR2013]" double precision,
	"2014 [YR2014]" double precision,
	"2015 [YR2015]" double precision,
);

CREATE TABLE mobile (
	"Series Name" varchar(100),
	"Series Code" varchar(50),
	"Country Name" varchar(100),
	"Country Code" varchar (5),
	"2000 [YR2000]" double precision,
	"2001 [YR2001]" double precision,
	"2002 [YR2002]" double precision,
	"2003 [YR2003]" double precision,
	"2004 [YR2004]" double precision,
	"2005 [YR2005]" double precision,
	"2006 [YR2006]" double precision,
	"2007 [YR2007]" double precision,
	"2008 [YR2008]" double precision,
	"2009 [YR2009]" double precision,
	"2010 [YR2010]" double precision,
	"2011 [YR2011]" double precision,
	"2012 [YR2012]" double precision,
	"2013 [YR2013]" double precision,
	"2014 [YR2014]" double precision,
	"2015 [YR2015]" double precision,
);

-- checking imports
SELECT * FROM happiness_score;
SELECT * FROM coordinates;
SELECT * FROM energy_use;
SELECT * FROM gdp;
SELECT * FROM gdp_percap;
SELECT * FROM mobile;

-- additional checks
