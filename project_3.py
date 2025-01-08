#-------------------------------
# 1. SET UP A DASH OF HAPPINESS APP
#-------------------------------

# Import Dependencies

from flask import Flask, jsonify, session
import numpy as np
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
import datetime as dt
import pandas as pd

#--------------------------------
# 2. Database Setup
#--------------------------------

# Access SQLite Database
engine = create_engine("sqlite:///../Resources/.sqlite")

# Reflect the database into classes
Base.prepare(autoload_with=engine)

# Create the classes variables
Connectivity = Base.classes.mobile
oil_usage = Base.classes.oil_usage
gdp = Base.classes.gdp_percap
happiness = Base.classes.happiness_score

# Define session variable
session = Session(engine)

#--------------------------------
# 3. Flask Setup
#--------------------------------

# Define the Flask app
app = Flask(__name__)

#--------------------------------
# 4. Welcome Flask Route
#--------------------------------

# Define Welcome Route
@app.route("/")

# Create the welcome() function
def welcome():
    return(
        f"Available Routes:<br/>"
        f"Available happiness_score:<br/>"
        f"Available oil_usage:<br/>"
        f"Available mobile:<br/>"
        f"Available gdp_percap:<br/>"
    )

#--------------------------------
# 5. Flask Route - Oil Usage needs to be finished
#--------------------------------
# Define oil usage route
@app.route("/api/v1.0/happiness_score")
# Create the oil_usage() function
def happiness_score():
	# Session link
    session = Session(engine)
    # Query
    results = session.query(happiness_score).all()
    session.close()
    # Create Dictionary
    happiness_score_data = []
    for happiness_score in results:
        happiness_score_dict = {}
        happiness_score_dict["country"] = [0]
        happiness_score_dict["Happiness Score - 2012"] = results[0]
        happiness_score_dict["Happiness Score - 2013"] = results[1]
        happiness_score_dict["Happiness Score - 2015"] = results[2]
        happiness_score_dict["Happiness Score - 2016"] = results[3]
        happiness_score_dict["Happiness Score - 2016"] = results[4]
        happiness_score_dict["Happiness Score - 2017"] = results[5]
        happiness_score_dict["Happiness Score - 2018"] = results[6]
        happiness_score_dict["Happiness Score - 2019"] = results[7]
        happiness_score_dict["Happiness Score - 2020"] = results[8]
        happiness_score_dict["Happiness Score - 2021"] = results[9]
        happiness_score_dict["Happiness Score - 2022"] = results[10]
        happiness_score_dict["Happiness Score - 2023"] = results[11]
        happiness_score_dict["Happiness Score - 2024"] = results[12]
        
        happiness_score_data.append(happiness_score_dict)
    return jsonify(happiness_score_data)

#--------------------------------
# 5. Flask Route - Oil Usage needs to be finished
#--------------------------------
# Define oil usage route
@app.route("/api/v1.0/oil_usage")

# Create the oil_usage() function
def oil_usage():
	# Session link
    session = Session(engine)
    # Query
    results = session.query(oil_usage).all()
    session.close()
    # Create Dictionary
    oil_usage_data = []
    for oil_usage in results:
        oil_usage_dict = {}
        gdp_percap_dict["series"] = results[0]
        gdp_percap_dict["country"] = results[1]
        gdp_percap_dict["code"] = results[2]
        gdp_percap_dict["yr2000"] = results[3]
        gdp_percap_dict["yr2001"] = results[4]
        gdp_percap_dict["yr2002"] = results[5]
        gdp_percap_dict["yr2003"] = results[6]
        gdp_percap_dict["yr2004"] = results[7]
        gdp_percap_dict["yr2005"] = results[8]
        gdp_percap_dict["yr2006"] = results[9]
        gdp_percap_dict["yr2007"] = results[10]
        gdp_percap_dict["yr2008"] = results[11] 
        gdp_percap_dict["yr2009"] = results[12] 
        gdp_percap_dict["yr2010"] = results[13] 
        gdp_percap_dict["yr2011"] = results[14]
        gdp_percap_dict["yr2012"] = results[15]
        gdp_percap_dict["yr2013"] = results[16]
        gdp_percap_dict["yr2014"] = results[17]
        gdp_percap_dict["yr2015"] = results[18]
        oil_usage_data.append(oil_usage_dict)
    return jsonify(oil_usage_data)


# -----------------------------
# 6. Flask Route - Life Expectancy needs to be finished
# -----------------------------

# Define life_expectancy route
@app.route("/api/v1.0/mobile")

# Create the life_expectancy() function
def life_expectancy():
    # Session link
    session = Session(engine)
    # Query
    results = session.query(mobile).all()
    session.close()
    # Create Dictionary
    mobile_data = []
    for mobile in results:
        mobile_dict = {}
        gdp_percap_dict["series"] = results[0]
        gdp_percap_dict["country"] = results[1]
        gdp_percap_dict["code"] = results[2]
        gdp_percap_dict["yr2000"] = results[3]
        gdp_percap_dict["yr2001"] = results[4]
        gdp_percap_dict["yr2002"] = results[5]
        gdp_percap_dict["yr2003"] = results[6]
        gdp_percap_dict["yr2004"] = results[7]
        gdp_percap_dict["yr2005"] = results[8]
        gdp_percap_dict["yr2006"] = results[9]
        gdp_percap_dict["yr2007"] = results[10]
        gdp_percap_dict["yr2008"] = results[11] 
        gdp_percap_dict["yr2009"] = results[12] 
        gdp_percap_dict["yr2010"] = results[13] 
        gdp_percap_dict["yr2011"] = results[14]
        gdp_percap_dict["yr2012"] = results[15]
        gdp_percap_dict["yr2013"] = results[16]
        gdp_percap_dict["yr2014"] = results[17]
        gdp_percap_dict["yr2015"] = results[18]
        mobile_data.append(mobile_dict)
    return jsonify(mobile_data)

# -----------------------------
# 7. Flask Route - GDP Percap needs to be finished
# -----------------------------

# Define gdp route
@app.route("/api/v1.0/gdp_percap")

# Create the gdp() function
def gdp():
    # Session link
    session = Session(engine)
    # Query
    results = session.query(gdp_percap).all()
    session.close()
    # Create Dictionary
    gdp_percap_data = []
    for gdp_percap in results:
        gdp_percap_dict = {}
        gdp_percap_dict["series"] = results[0]
        gdp_percap_dict["country"] = results[1]
        gdp_percap_dict["code"] = results[2]
        gdp_percap_dict["yr2000"] = results[3]
        gdp_percap_dict["yr2001"] = results[4]
        gdp_percap_dict["yr2002"] = results[5]
        gdp_percap_dict["yr2003"] = results[6]
        gdp_percap_dict["yr2004"] = results[7]
        gdp_percap_dict["yr2005"] = results[8]
        gdp_percap_dict["yr2006"] = results[9]
        gdp_percap_dict["yr2007"] = results[10]
        gdp_percap_dict["yr2008"] = results[11] 
        gdp_percap_dict["yr2009"] = results[12] 
        gdp_percap_dict["yr2010"] = results[13] 
        gdp_percap_dict["yr2011"] = results[14]
        gdp_percap_dict["yr2012"] = results[15]
        gdp_percap_dict["yr2013"] = results[16]
        gdp_percap_dict["yr2014"] = results[17]
        gdp_percap_dict["yr2015"] = results[18]
        gdp_percap_data.append(gdp_percap_dict)
    return jsonify(gdp_percap_data)

if __name__ == "__main__":
    app.run(debug=True)
    