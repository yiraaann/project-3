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
Base = automap_base()
Base.prepare(autoload_with=engine)

# Create the classes variables
life_expectancy = Base.classes.life_expectancy
oil_usage = Base.classes.oil_usage
gdp = Base.classes.gdp
happiness = Base.classes.happiness

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
        '''
	Welcome to A Dash of Happiness!
	Available Routes:
	

#--------------------------------
# 5. Heat Map Flask Route - Oil Usage
#--------------------------------

# Define oil usage route
@app.route("/api/v1.0/oil_usage")

# Create the oil_usage() function
def oil_usage():
	

# -----------------------------
# 6. Bubble Flask Route - Life Expectancy
# -----------------------------

# Define life_expectancy route
@app.route("/api/v1.0/life_expectancy")

# Create the life_expectancy() function
def life_expectancy():

# -----------------------------
# 7. Ribbon Flask Route - GDP
# -----------------------------

# Define gdp route
@app.route("/api/v1.0/gdp")

# Create the gdp() function
def gdp():	

    

if __name__ == "__main__":
    app.run(debug=True)
