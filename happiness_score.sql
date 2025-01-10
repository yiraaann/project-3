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

-- additional queries

-- happiest countries in 2024
SELECT "Country", "Happiness Score - 2024"
FROM happiness_score
GROUP BY "Country"
ORDER BY "Happiness Score - 2024" DESC;
-- the top 5 happiest countries in 2024 were:
-- Finland, Denmark, Iceland, Sweden, and Israel

-- least happy countries in 2024
SELECT "Country", "Happiness Score - 2024"
FROM happiness_score
WHERE "Happiness Score - 2024" <> 0
GROUP BY "Country"
ORDER BY "Happiness Score - 2024";
-- the 5 least happy countries in 2024 were:
-- Afghanistan, Lebanon, Lesotho, Sierra Leone, and the Democratic Republic of Congo

-- top 5 countries with highest average happiness score over the past 5 years
SELECT "Country", AVG("Happiness Score - 2020" + "Happiness Score - 2021" + "Happiness Score - 2022" + "Happiness Score - 2023" + "Happiness Score - 2024")
AS last5_average
FROM happiness_score
GROUP BY "Country"
ORDER BY last5_average DESC;
-- the top 5 countries with highest average happiness score over the last 5 years are:
-- Finland, Denmark, Iceland, Netherlands, and Switzerland

-- top 5 countries with lowest average happiness score over the past 5 years
SELECT "Country", AVG("Happiness Score - 2020" + "Happiness Score - 2021" + "Happiness Score - 2022" + "Happiness Score - 2023" + "Happiness Score - 2024")
AS last5_average
FROM happiness_score
WHERE "Happiness Score - 2020" <> 0
	AND "Happiness Score - 2021" <> 0
	AND "Happiness Score - 2022" <> 0
	AND "Happiness Score - 2023" <> 0
	AND "Happiness Score - 2024" <> 0
-- excluding countries with happiness score of 0 in any of the last 5 years
GROUP BY "Country"
ORDER BY last5_average;
-- the top 5 countries with lowest average happiness score over the last 5 years are:
-- Afghanistan, Zimbabwe, Botswana, Lebanon, Sierra Leone

-- Connectivity in 2015: countries' happiness scores based on mobile subscriptions
SELECT "Country", "Happiness Score - 2015", "yr2015"
FROM happiness_score
INNER JOIN mobile ON happiness_score."Country" = mobile.country
WHERE "Happiness Score - 2015" <> 0
GROUP BY "Country", "yr2015"
ORDER BY "yr2015" DESC;
-- most cellulary connected & happiest countries in 2015 were:
-- Hong Kong, United Arab Emirates, Kuwait, Bahrain, Saudi Arabia

-- Happiness scores in 2015
SELECT "Country", "Happiness Score - 2015"
FROM happiness_score
GROUP BY "Country"
ORDER BY "Happiness Score - 2015" DESC;

-- Energy Usage in 2013: countries' happiness scores based on energy usage (kg of oil)
SELECT "Country", "Happiness Score - 2013", "yr2013"
FROM happiness_score
INNER JOIN energy_use ON happiness_score."Country" = energy_use.country
WHERE "Happiness Score - 2013" <> 0
GROUP BY "Country", "yr2013"
ORDER BY "yr2013" DESC;
-- countries with highest energy usage and happiess in 2013 were:
-- Qatar, Iceland, Trinidad & Tobago, Bahrain, Kuwait

-- Happiness scores in 2013
SELECT "Country", "Happiness Score - 2013"
FROM happiness_score
GROUP BY "Country"
ORDER BY "Happiness Score - 2013" DESC;

-- GDP per capita in 2012: countries' happiness scores based on Gross Domestic Product per capita
SELECT "Country", "Happiness Score - 2012", "yr2012"
FROM happiness_score
INNER JOIN gdp_percap ON happiness_score."Country" = gdp_percap.country
WHERE "Happiness Score - 2012" <> 0
GROUP BY "Country", "yr2012"
ORDER BY "yr2012" DESC;
-- countries with highest GDP per capita and happiness scores in 2012 were:
-- Luxembourg, Norway, Switzerland, Australia, Denmark

-- Happiness scores in 2012
SELECT "Country", "Happiness Score - 2012"
FROM happiness_score
GROUP BY "Country"
ORDER BY "Happiness Score - 2012" DESC;
