# Project 3 | Data Engineering: A Dash of Happiness

# Team Members:
- Michelle Moody: Data Acquistion/Research, Create Coordinates Dataframe, Create Happiness Dataframe, Flask, Jupyter Notebook Outline, README
- Yiran Zhang: Data Acquisition, Create WorldBank Dataframe, ERD model, SQL import, Import Data into Database (SQL), README
- Sean Daily: HTML/CSS, Flask

# Project Objectives:
1) Building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data that is gathered from various sources (CSV, APIs, databases)
2) Convert dataframes into CSV files and use the CSV file data to create an ERD and a table schema
3) Upload the schema created into a SQL database
4) Generate tables within the database
5) Flask integration to make the data accessible via HTTP requests; reading data from the database and displaying it for future use

Programming & Software: 
- Microsoft Excel: used for viewing and manipulating csv files
- QuickDBD: used for sketching the ERD table and generating sql import
- PostgresSQL: relational database management system
- pgAdmin: used as a tool to provide access to the data
- Jupyter Notebook: used for data cleaning and processing

Libraries:
- pandas
- Numpy
- Tabula (Install via Terminal/GitBash & JAVA Environment required on local computer)
- RegEx
- JSON

# Project Overview:
As Shakespeare put it, “All the world’s a stage, and all the men & women merely players.” How much of our “stage” impacts our happiness levels? Is happiness truly subjective, or is it our surroundings–our scene–that more objectively affects our sense of well-being? Our team sets out to analyze various broad themes such as financial/economic, connectivity, environmental and general life expectancy factors and the roles they play in our happiness on the world stage. This is by no means meant to be a comprehensive investigation into the myriad of factors that contribute to happiness, but rather, a deeper dive into interesting indicators and potential interactions.

Research Question:
- How does happiness change assessing connectivity, financial/economic factors/environmental factors?

Connectivity: Mobile cellular subscriptions
Financial/Economic: GDP per capita
Environmental: Power/oil usage

# Instructions - Use and Interaction:
Part 1: Create DataFrames (Michelle and Yiran)

- Import Dependencies including new library called tabula, ensure to download Java runtime on your environment before installing the new library via Terminal or GitBash

Using Jupyter Notebook to import the multiple excel files that were extracted from:
* World Happiness Report: 2012, 2013 (PDF format), 2015 - 2024 (Missing 2014 data)
* World Bank Group | World Development Indicators: Connectivity, Financial/Economic/Environmental
* Country Coordinates

- coordinates.csv
- happiness_score.csv
- mobile.csv
- gdp_percap.csv
- energy_use.csv

Part 2: Create Databases (Yiran)

Using QuickDBD, we sketched an Entity Relationship Diagram (ERD) to form a table schema. We identified the dependencies between each table (primary and foreign keys) and their relationships (one to one/one to many) and the relevant datatypes for each column.

- Schema = happiness_score.sql
- ERD Diagram = happiness erd.png

![alt text](<happiness erd.png>)

Part 3: Import Data into Database (Yiran)

Databases Used = SQL
Reasons for Using this Database:

- relational databases like SQL ensure seamless integration of multiple data sources via primary & foreign keys
- the Happiness Score and World Bank data came from different years, and SQL gives analysts the flexibility of selecting years (columns) of interest for side-by-side comparison or to compile into trends for other types of conclusions
- nomenclature differences: ease of use in relating coordinate data, World Bank data, and Happiness Score data given differing dataset sizes

![datasets](https://github.com/user-attachments/assets/49313031-c2c1-4cd2-9573-7e3333b02cd5)

figure showing dataset sizes in relation to each other

We created a SQL database in Postgres through pgAdmin. The table schema sql file generated through the ERD diagram was uploaded to create a table structure and dependencies. 

- happiness_score.csv
- mobile.csv
- gdp_percap.csv
- energy_use.csv 

Part 4: Findings and Queries - Tables Generated (Yiran)

Research Question:
- How does happiness change assessing connectivity, financial/economic factors/environmental factors?

Part 5: Flask Integration (Sean)

Here we are using flask as a way to use all the data that we cleaned and put into our sql(lite) to the use in our app.py to find the data we are using for Happiness Score, Mobile, Oil_sage, and GDP_percap. these are the datasets that we are using to compare the happiness score to each sub data set in the sql file 

When looking at the app.py their are a lot of years we have to use to compare the datasets against each other for the happiness scores. In the app.py you can see we break down each data set to get all the data and being able to display it so that you can see it being compared to each other. In our app.py we are breaking down and finding the data we are looking for to compare Happiness Score to each of our databases. We want to see how the score impacts happiness against Oil_usage, Mobile, and GDP_percap.

# Ethical Considerations:
In our project, we prioritized ethical considerations, especially when handling data and interpreting results. All data used came from credible, publicly accessible sources, ensuring respect for intellectual property and privacy. Rather than oversimplifying a complex topic like happiness, we focused on identifying patterns and relationships, avoiding conclusions that suggest direct causation. To promote inclusivity, we chose universal metrics like GDP per capita, mobile cellular subscriptions, and power/oil usage—factors that are relevant across cultures. By documenting our ETL workflow, data transformations, and methodological decisions, making our work easy to reproduce and understand. This allows for full transparency with our analysis. Overall, our goal was to present our findings responsibly and highlight the exploratory nature of this dataset and how much more can be explored looking at various global indicators. 

# Data Sources:
- World Happiness Report: https://worldhappiness.report/data/ 
Happiness Data Years - 2012, 2013, 2015 - 2024

- World Bank Group | World Development Indicators: https://databank.worldbank.org/indicator/NY.GDP.MKTP.CD/1ff4a498/Popular-Indicators# 
World Bank "World Development Indicators" Data Years - 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015

- Latitude and Longitude of countries: https://developers.google.com/public-data/docs/canonical/countries_csv

# Code Sources:
- https://github.com/NormanLo4319/World_Happiness_Database_API

# Challenges:
1) Tabula formatting once that data was pulled from the PDF
* Headers populating needed to be redefined as None
* Some data was split into a new row with only a portion of the country name displayed

2) Inconsistent naming of countries across various platforms. Extensive ERD was required to confirm the country name and spellings. (60+ inconsistencies identified)
Examples:
* Congo (Brazzaville), Congo, Congo (Kinshasa): Google Search = Officially known as the Republic of the Congo, the country is often called Congo (Brazzaville), with its capital added parenthetically, to distinguish it from neighbouring Democratic Republic of the Congo, which is often referred to by its acronym, the DRC, or called Congo (Kinshasa).
* Palestine, Palestinian Territories, The Palestinian Territories

3) Difficulty integrating data into HTML format 
* Switched from Data Visualization Track to Data Engineering Track

# Further Exploration | Suggestions:
- Use MongoDB for database storage of country data due to the dynamic nature of the data. As a NoSQL database the flexible schema can be adjusted as country names have the potential to continually change over time. It's also better suited for more dynamic queries. The multiple spellings of the country names would all be included to accomodate the variation. 
- Create a dashboard to display the comparisons 

# Executive Summary & Conclusion: 
ETL (Extract, Transform, Load) is essential for preparing data for analysis within the data science field. Since data is often dispersed across different sources and stored in varied formats, mastering ETL ensures you can consolidate and clean it effectively. Skills like adjusting data types, resolving formatting inconsistencies, and renaming/creating new columns are key to transforming raw data into useable  data to uncover valuable insights. Once transformed, storing the processed data in a PostgreSQL database ensures secure, structured, and efficient access for further analysis. Additionally, building a Flask application to interface with the database allows you to create a seamless API, making your cleaned data easily accessible to other applications and future HTML integration.
