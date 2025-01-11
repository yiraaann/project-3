#-------------------------------
# 1. SET UP A DASH OF HAPPINESS APP
#-------------------------------

# Import Dependencies

from flask import Flask, jsonify
import pandas as pd
import csv

#--------------------------------
# 2. Flask Setup
#--------------------------------

# Define the Flask app
app = Flask(__name__)

#--------------------------------
# 3. Welcome Flask Route
#--------------------------------

# Define Welcome Route
@app.route("/")

# Create the welcome() function
def welcome():
    return(
        '''Welcome to A Dash of Happiness!'''
        f"<br/>Available Routes: <br/>"
        f"/api/v1.0/mobile<br/>"
        f"/api/v1.0/energy_use<br/>"
        f"/api/v1.0/gdp_percap<br/>"
        f"/api/v1.0/happiness_score<br/>"
        f"/api/v1.0/coordinates")
	
#--------------------------------
# 4. Flask Route - Mobile Usage
#--------------------------------

# Define mobile route
@app.route("/api/v1.0/mobile")

# Create the mobile() function
def mobile():

    # Read CSV file into a pandas DataFrame
    mobile_file_path = 'mobile.csv'  
    mobile_df = pd.read_csv(mobile_file_path)

    # Convert DataFrame to JSON
    mobile_json_data = mobile_df.to_json(orient='records')

    return jsonify(mobile_json_data)
    
# -----------------------------
# 5. Flask Route - Energy Use
# -----------------------------

# Define energy_use route
@app.route("/api/v1.0/energy_use")

# Create the energy_use() function
def energy_use():

    # Read CSV file into a pandas DataFrame
    energy_use_file_path = 'energy_use.csv'  
    energy_use_df = pd.read_csv(energy_use_file_path)

    # Convert DataFrame to JSON
    energy_use_json_data = energy_use_df.to_json(orient='records')

    return jsonify(energy_use_json_data)

# -----------------------------
# 6. Flask Route - GDP Per Capita
# -----------------------------

# Define gdp_percap route
@app.route("/api/v1.0/gdp_percap")

# Create the gdp() function
def gdp_percap():	

    # Read CSV file into a pandas DataFrame
    gdp_percap_file_path = 'gdp_percap.csv'  
    gdp_percap_df = pd.read_csv(gdp_percap_file_path)

    # Convert DataFrame to JSON
    gdp_percap_json_data = gdp_percap_df.to_json(orient='records')

    return jsonify(gdp_percap_json_data)

# -----------------------------
# 7. Flask Route - Happiness
# -----------------------------

# Define happiness_score route
@app.route("/api/v1.0/happiness_score")

# Create the happiness_score() function
def happiness_score():	

    # Read CSV file into a pandas DataFrame
    happiness_score_file_path = 'happiness_score.csv'  
    happiness_score_df = pd.read_csv(happiness_score_file_path)

    # Convert DataFrame to JSON
    happiness_score_json_data = happiness_score_df.to_json(orient='records')

    return jsonify(happiness_score_json_data)

# -----------------------------
# 8. Flask Route - Coordinates
# -----------------------------

# Define coordinates route
@app.route("/api/v1.0/coordinates")

# Create the happiness_score() function
def coordinates():	

    # Read CSV file into a pandas DataFrame
    coordinates_file_path = 'coordinates.csv'  
    coordinates_df = pd.read_csv(coordinates_file_path)

    # Convert DataFrame to JSON
    coordinates_json_data = coordinates_df.to_json(orient='records')

    return jsonify(coordinates_json_data)

if __name__ == "__main__":
    app.run(debug=True)
