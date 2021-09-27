#  Big City Vacation - Deliverable 2

## Team:
Laura Clark (circle), Christine Mitchell (square), and Josh Stephens (triangle)

## Big Why:
Our team chose this project for the pu

## Story:
Before you grab your walking shoes, cameras, and water bottle, to explore “The Big Apple” or “The City”, you will need to plan for your big city vacation adventure and we are here to help.<br/>

The first question you may ask yourself is, "when should I book my trip to NYC or London?" Our team can help answer that question by accounting for weather. We will create a model to predict the average maximum temperature for each month. Based on your preferences, we can then provide suggestions as to when to schedule your vacation. <br/>

But that is not all, we would like to provide additional resources to get the most out of your vacation by creating a layered map that can be used to build out your daily itenary. <br/>
<li>	First, we would like to provide optional hotel accommodations that meet a minimum rating threshold. </li>
<li>	Second, we would like to provide suggested points of interests and group them together by area so you can make the most out of each day. </li>
<li>	Third, we realize how important it is to find a good restaurant near your activities and lodging as well as how it can add to the cultural experience, so we would like to display “What restaurants are in the area and how good they are” on the layered map.</li> <br/>

So, let’s get started.<br/>

## Tools & Technologies: 
<li>	Excel for initial csv file data exploration and some cleaning. </li> <br/> 

<li>	Jupiter Notebook using Python & PANDAS library to further explore data, clean the data, and train the model. </li> <br/> 

<li>	Data Storage: Chose to change from Mongo DB to a PostgreSQL DB with this deliverable to store our weather data for predictive modeling. Please see the schema below. </li> <br/> 

![image](https://user-images.githubusercontent.com/82008319/134836752-e36d1b39-bd09-4849-a8a6-cb9532132fef.png)

<li>	Tableau to develop our interactive dashboard and create a layered map with points of interest for a vacation in NYC or London. Points of interest will include hotels, eateries, and attractions and will be loaded with csv files.</li> <br/> 

<li>	Updated our Machine Learning Model from Neural Network Model to a simpler linear regression model. Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model. We made this change because we felt the linear model was easier to leverage and more effectively provided the predictions we wanted for our project. By utilizing this model, however, we lose the ability to customize various options such as the number of hidden layers, the number of neurons in each hidden layer, and activation functions.

![image](https://user-images.githubusercontent.com/82008319/134836194-cd427175-982d-4940-abb0-d5eb37843ac9.png)

Historical weather data is accessed from a PostgreSQL database. A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature. The weather features that our models predict are:

<li>	average monthly high temperature</li> 
<li>	total monthly rainfall</li> 
<li>	total monthly snowfall (NYC only)</li> 
<li>	total monthly sunshine hours (London only)</li> <br/>  

We used Scikit-learn's train_test_split to separate our dataset into training sets and testing sets. Each model is trained on 75% of the dataset and tested on the remaining 25%. To evaluate our models, we utilized Mean Squared Error (MSE).

We compared performance of these individual-month models to models that included data for all months and used month number as an input. When comparing model performance, the individual-month models generally had much better performance. For the rainfall model, however, the combined model performed slightly better. For consistency purposes, all models were broken out into individual months.

In preliminary versions of our models, graphs were created with a scatter plot for training and testing data and a line for the prediction model.

To create the predicted weather ranges for each city, we used the Mean Absolute Error (MAE) -/+ the predicted value. We then rounded the total rainfall to the nearest tenth of an inch. For other weather features, we rounded down to the nearest integer for the low end of the prediction range and up to the nearest integer for the high end of the range.

Initially we planned to show predictions for 2022 and 2023 but we found these ranges were nearly identical thus we only show one column for each weather feature. An example for London is shown below:<br/>

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
https://www.yelp.com/developers/documentation/v3/business_search<br/>
Extracted a data set that included the property name, type of property, rating, price, location (address & coordinates), and url.<br/><br/>

NEW YORK CITY:<br/>
https://www.yelp.com/developers/documentation/v3/business_search<br/>
Extracted a data set that included the property name, type of property, rating, price, location (address & coordinates), and url.<br/><br/>

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

### Restaurant Locations and Ratings:
https://www.yelp.com/developers/documentation/v3/business_search<br/>
We originally were going to use YELP dataset via kaggle, however found that the dataset offered was limited. For example there were only three restaurants in NYC. Therefore, we decided to utilize the Yelp Business Search API.<br/><br/>

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

