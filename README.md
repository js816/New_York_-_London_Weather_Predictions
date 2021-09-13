#  Final_Project_Travel_Deliverable_1

## Team:
Laura Clark (circle), Christine Mitchell (square), and Josh Stephens (triangle)

## Story:
Before you grab your walking shoes, cameras, and water bottle, to explore “The Big Apple” or “The City”, you will need to plan for your big city vacation adventure and we are here to help.<br/>

The first question you may ask yourself is, "when should I book my trip?" Our team can help answer that question by accounting for weather. We will create a model to predict the average maximum temperature for each month. Based on your preferences, we can then provide suggestions as to when to schedule your vacation. <br/>

But that is not all, we would like to provide additional resources to get the most out of your vacation by creating a layered map that can be used to build out your daily itenary. <br/>
<li>	First, we would like to provide optional hotel accommodations that meet a minimum rating threshold. </li>
<li>	Second, we would like to provide suggested points of interests and group them together by area so you can make the most out of each day. </li>
<li>	Third, we realize how important it is to find a good restaurant near your activities and lodging as well as how it can add to the cultural experience, so we would like to display “What restaurants are in the area and how good they are” on the layered map.</li> <br/>

So, let’s get started.<br/>

## Tools & Technologies: 
<li>	Excel for initial csv file data exploration and some cleaning. </li> <br/> 

<li>	Jupiter Notebook using PANDAS & Python to further explore data, clean the data, and train the model. </li> <br/> 

<li>	Data Storage: Mongo DB utilizing postregresql to store our weather data for predictive modeling. </li> <br/> 

<li>	Tableau to develop our interactive dashboard and create a layered map with points of interest for a vacation in NYC or London. Points of interest will include hotels, eateries, and attractions and will be loaded with csv files.</li> <br/> 

<li>	Machine Learning Neural Network Model trained to predict the average maximum temperature for each month based on the scaled inputs like sunlight hours, air frost days, minimum temperature, precipitation, and snowfall (independent variables). This model was selected in an attempt to leverage the flexibility of the various hidden layers, neurons, activation functions, etc. The model is evaluated based upon loss and mean squared error (MSE). We’re hopeful that our model can be used to present months that match a travelers desired high temperature. </li> <br/>

![ML_mock_up](https://user-images.githubusercontent.com/82730954/132999771-d43477d1-127c-437c-9d9d-f4c265174024.PNG)


## Data Sources:
### Weather Data:

LONDON: <br/> 
Source: https://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/heathrowdata.txt <br/> 
More information: https://www.metoffice.gov.uk/research/climate/maps-and-data/historic-station-data <br/> <br/>
The dataset contains monthly weather data for Heathrow (London Airport) from January 1948 - August 2021. This dataset contains 884 rows and 7 columns of labels and values. Each month includes details such as:<br/> 
<li>	Mean daily maximum temperature </li> 
<li>	Mean daily minimum temperature </li> 
<li>  Total rainfall </li> 
<li>	Air frost days </li> 
<li>	Total monthly sunshine (the device for measuring sunshine changed 9/2005. Removed # indicator from sunshine data in Excel using substitute formula suggested here: https://spreadsheetplanet.com/remove-specific-character-from-string-excel/) </li> <br/> 
The data was loaded into a DataFrame and grouped by month. Averages and minimum and maximum values were generated. <br/> <br/>

NEW YORK CITY:<br/>
Source: https://www.weather.gov/wrh/Climate?wfo=okx <br/> 
Monthly summarized data was captured for NY-Central Park Area from the site above for 1948 - 2021. This dataset has 884 rows and 6 columns of labels and values. Each month includes the following details: <br/> 
<li>	Mean daily maximum temperature </li> 
<li>	Mean daily minimum temperature </li> 
<li>	Total precipitation </li> 
<li>	Total snowfall </li> <br/> 
Using vlookups, the data was consolidated from multiple tables and worksheets into one CSV file that mimicked the format of the London data. The dataset was loaded into a DataFrame and grouped by month. Averages and minimum and maximum values were captured. <br/> <br/> 

### Hotels:
The property name, address, and rating will be utilized in our layered map pop up marker. The coordinates are necessary to include them on our map.<br/><br/>

LONDON:<br/>
https://data.world/promptcloud/customer-of-reviews-of-london-based-hotels <br/>
Original data set included the property name, review rating, review title, review text, reviewer location. Latitude and longitude coordinates were added to the dataset using google maps at the source.<br/><br/>

NEW YORK CITY:<br/>
https://www.kaggle.com/gdberrio/new-york-hotels <br/>
Data set includes the property name, address, latitude, longitude, star_rating, high rate, and low rate. <br/><br/>

### Points of Interest:
LONDON:<br/>
It took a while to find a website with the desired data, and that was http://tour-pedia.org/about/datasets.html <br/>
Although it needed heavy editing and some geocordinates from an API, this had the information about the name and address. <br/><br/>

NEW YORK CITY:<br/>
Data.gov was used and these were all the datasets pulled<br/>
<li>	https://catalog.data.gov/dataset/new-york-city-museums </li> 
<li>	https://catalog.data.gov/dataset/new-york-city-art-galleries </li> 
<li>	https://catalog.data.gov/dataset/new-york-city-water-trail-kayak-and-canoe-launch-sites </li> 
<li>  https://catalog.data.gov/dataset/directory-of-temporary-public-art </li> 
<li>	https://catalog.data.gov/dataset/nyc-parks-monuments </li> <br/>
Although the format differed between most of the datasets, they all had a name, most had an address, and all had latitude and longitude in one form or another<br/><br/>

### Restaurant Reviews:
https://www.kaggle.com/yelp-dataset/yelp-dataset <br/><br/>

## Logistics:
### Communication Protocal: 
<li> Slack Channel – Group 2 </li>
<li> Exchange personal numbers for group texts in the event of emergency or no response after 24 hours in slack. </li><br/>

### Manage Project: 
<li>	Git Hub Repository: https://github.com/ChristineMitchell/Final_Project_Travel </li>
<li>  Git Hub Task List created via Issues tab of the repository </li><br/>

### Meeting: 
<li>	Class time </li>
<li>	As needed, Josh Stephens host zoom meetings. </li><br/>

