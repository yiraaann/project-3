let basMaps = L.tileLayer('https://{s}.tile.opentopomap.org/{x}/{y}.png', {
  attribution: 'Map data: &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, <a href="http://viewfinderpanoramas.org">SRTM</a> | Map style: &copy; <a href="https://opentopomap.org">OpenTopoMap</a> (<a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA</a>)'
});

//stored URL for GEoJSON Data website
d3.json(baseMaps).then(function (data){
  console.log(response);

//Leaflet Mapgraphs
var baseMaps = L.map("map",{
  center: [40,-85],
  zoom: 4,
});
baseMaps.addTo(map);

//Add circles to map for countries mentioned in data sets
L.circle([50.5, 30.5], {radius: 200});
baseMaps.addTo(map)});

// function for Bubble Chart
//function buildCharts(sample) {
  //d3.json("https://static.bc-edx.com/data/dl-1-2/m14/lms/starter/samples.json").then((data) => {

// potential sample field

//Build a Bubble Chart
//let layoutBubble = {
    //title: "Countries Happeniess Scores",
    //xaxis:{title: "OTU ID"},
    //yaxis:{title: "Number of Bacteria"},
  //};
  //let dataBubble = [{
    //x: otu_ids,
    //y: sample_values,
    //text: otu_labels,
    //mode: "markers", 
    //marker: {
      //size: sample_values,
      //color: otu_ids,
    //}
  //}];

  // Render the Bubble Chart
  //Plotly.newPlot("bubble", dataBubble, layoutBubble);

//heat map chart
//d3.csv('https://raw.githubusercontent.com/plotly/datasets/master/earthquakes-23k.csv',
  //function(err, rows){function unpack(rows, key) {return rows.map(function(row){ return row[key];
//})};

//var data = [{
  //lon: unpack(rows, 'Longitude'), lat: unpack(rows, 'Latitude'), radius:10,
  //z: unpack(rows, 'Magnitude'), type: "densitymap", coloraxis: 'coloraxis',
  //hoverinfo: 'skip'}];

//var layout = {
    //map: {center: {lon: 60, lat: 30}, style: "outdoors", zoom: 2},
    //coloraxis: {colorscale: "Viridis"}, title: {text: "Earthquake Magnitude"},
    //width: 600, height: 400, margin: {t: 30, b: 0}};

//Plotly.newPlot('myDiv', data, layout);
//})

//ribbon chart
//d3.json('https://raw.githubusercontent.com/plotly/datasets/master/3d-ribbon.json', function(figure){

  //var trace1 = {
    //x:figure.data[0].x, y:figure.data[0].y, z:figure.data[0].z,
    //name: '',
    //colorscale: figure.data[0].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace2 = {
    //x:figure.data[1].x, y:figure.data[1].y, z:figure.data[1].z,
    //name: '',
    //colorscale: figure.data[1].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace3 = {
    //x:figure.data[2].x, y:figure.data[2].y, z:figure.data[2].z,
    //colorscale: figure.data[2].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace4 = {
    //x:figure.data[3].x, y:figure.data[3].y, z:figure.data[3].z,
    //colorscale: figure.data[3].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace5 = {
    //x:figure.data[4].x, y:figure.data[4].y, z:figure.data[4].z,
    //colorscale: figure.data[4].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace6 = {
    //x:figure.data[5].x, y:figure.data[5].y, z:figure.data[5].z,
    //colorscale: figure.data[5].colorscale,
    //type: 'surface',
    //showscale: false
  //}
  //var trace7 = {
    //x:figure.data[6].x, y:figure.data[6].y, z:figure.data[6].z,
    //name: '',
    //colorscale: figure.data[6].colorscale,
    //type: 'surface',
    //showscale: false
  //}

  //var data = [trace1, trace2, trace3, trace4, trace5, trace6, trace7];

  //var layout = {
    //title: {
      //text: 'Ribbon Plot'
    //},
    //showlegend: false,
    //autosize: true,
    //width: 600,
    //height: 600,
    //scene: {
      //xaxis: {title: {text: 'Sample #'}},
      //yaxis: {title: {text: 'Wavelength'}},
      //zaxis: {title: {text: 'OD'}}
    //}
  //};
  //Plotly.newPlot('myDiv', data, layout);
//});

// Function to run on page load
//function init() {
  //d3.json("https://static.bc-edx.com/data/dl-1-2/m14/lms/starter/samples.json").then((data) => { 

// Use d3 to select the dropdown with id of `#selDataset`
//let dropdown = d3.select("#selDataset");

// Use the list of sample names to populate the select options    
// Hint: Inside a loop, you will need to use d3 to append a new
// option for each sample name.
//for (let i = 0; i < sample_values.length; i++){
  //dropdown.append("option").text(sample_values[i]).property("value", sample_values[i]);
//)};

