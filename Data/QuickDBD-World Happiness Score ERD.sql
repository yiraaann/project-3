-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/NWHpqc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- relationship between happiness score and energy use, gdp per capita, mobile subscriptions

CREATE TABLE "happiness_score" (
    "Country" VARCHAR(100)   NOT NULL,
    "Happiness Score - 2012" FLOAT   NOT NULL,
    "Happiness Score - 2013" FLOAT   NOT NULL,
    "Happiness Score - 2015" FLOAT   NOT NULL,
    "Happiness Score - 2016" FLOAT   NOT NULL,
    "Happiness Score - 2017" FLOAT   NOT NULL,
    "Happiness Score - 2018" FLOAT   NOT NULL,
    "Happiness Score - 2019" FLOAT   NOT NULL,
    "Happiness Score - 2020" FLOAT   NOT NULL,
    "Happiness Score - 2021" FLOAT   NOT NULL,
    "Happiness Score - 2022" FLOAT   NOT NULL,
    "Happiness Score - 2023" FLOAT   NOT NULL,
    "Happiness Score - 2024" FLOAT   NOT NULL,
    CONSTRAINT "pk_happiness_score" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "coordinates" (
    "Latitude" FLOAT   NOT NULL,
    "Longitude" FLOAT   NOT NULL,
    "Country" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_coordinates" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "energy_use" (
    "series" VARCHAR(100)   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "code" VARCHAR(5)   NOT NULL,
    "yr2000" FLOAT   NOT NULL,
    "yr2001" FLOAT   NOT NULL,
    "yr2002" FLOAT   NOT NULL,
    "yr2003" FLOAT   NOT NULL,
    "yr2004" FLOAT   NOT NULL,
    "yr2005" FLOAT   NOT NULL,
    "yr2006" FLOAT   NOT NULL,
    "yr2007" FLOAT   NOT NULL,
    "yr2008" FLOAT   NOT NULL,
    "yr2009" FLOAT   NOT NULL,
    "yr2010" FLOAT   NOT NULL,
    "yr2011" FLOAT   NOT NULL,
    "yr2012" FLOAT   NOT NULL,
    "yr2013" FLOAT   NOT NULL,
    "yr2014" FLOAT   NOT NULL,
    "yr2015" FLOAT   NOT NULL,
    CONSTRAINT "pk_energy_use" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "gdp_percap" (
    "series" VARCHAR(100)   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "code" VARCHAR(5)   NOT NULL,
    "yr2000" FLOAT   NOT NULL,
    "yr2001" FLOAT   NOT NULL,
    "yr2002" FLOAT   NOT NULL,
    "yr2003" FLOAT   NOT NULL,
    "yr2004" FLOAT   NOT NULL,
    "yr2005" FLOAT   NOT NULL,
    "yr2006" FLOAT   NOT NULL,
    "yr2007" FLOAT   NOT NULL,
    "yr2008" FLOAT   NOT NULL,
    "yr2009" FLOAT   NOT NULL,
    "yr2010" FLOAT   NOT NULL,
    "yr2011" FLOAT   NOT NULL,
    "yr2012" FLOAT   NOT NULL,
    "yr2013" FLOAT   NOT NULL,
    "yr2014" FLOAT   NOT NULL,
    "yr2015" FLOAT   NOT NULL,
    CONSTRAINT "pk_gdp_percap" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "mobile" (
    "series" VARCHAR(100)   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "code" VARCHAR(5)   NOT NULL,
    "yr2000" FLOAT   NOT NULL,
    "yr2001" FLOAT   NOT NULL,
    "yr2002" FLOAT   NOT NULL,
    "yr2003" FLOAT   NOT NULL,
    "yr2004" FLOAT   NOT NULL,
    "yr2005" FLOAT   NOT NULL,
    "yr2006" FLOAT   NOT NULL,
    "yr2007" FLOAT   NOT NULL,
    "yr2008" FLOAT   NOT NULL,
    "yr2009" FLOAT   NOT NULL,
    "yr2010" FLOAT   NOT NULL,
    "yr2011" FLOAT   NOT NULL,
    "yr2012" FLOAT   NOT NULL,
    "yr2013" FLOAT   NOT NULL,
    "yr2014" FLOAT   NOT NULL,
    "yr2015" FLOAT   NOT NULL,
    CONSTRAINT "pk_mobile" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "happiness_score" ADD CONSTRAINT "fk_happiness_score_Country" FOREIGN KEY("Country")
REFERENCES "coordinates" ("Country");

ALTER TABLE "energy_use" ADD CONSTRAINT "fk_energy_use_country" FOREIGN KEY("country")
REFERENCES "happiness_score" ("Country");

ALTER TABLE "energy_use" ADD CONSTRAINT "fk_energy_use_code" FOREIGN KEY("code")
REFERENCES "gdp_percap" ("code");

ALTER TABLE "gdp_percap" ADD CONSTRAINT "fk_gdp_percap_code" FOREIGN KEY("code")
REFERENCES "mobile" ("code");

