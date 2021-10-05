#  Big City Vacation - Deliverable 3

## Team:
Laura Clark (circle), Christine Mitchell (square), and Josh Stephens (triangle)

## Why did we choose this topic:
Our team was interested in creating a fun and adventurous project utilizing tools and skills that we learned throughout the course. We all enjoyed working with maps. So, we thought how fun it would be to plan a trip to a few major cities creating an interactive layered map visualization in tableau that allows you to create an itinerary.    

## Presentation:
https://docs.google.com/presentation/d/e/2PACX-1vSHPDfYkY7D8Y6JWAzLDjEQbPk9rEafHPrW1vApHoetRfHzEp_DiWalxgsOKQDRdVrYqmN-JER3ABk_/pub?start=true&loop=false&delayms=3000

## Story:
Big City Vacation: Choose from NYC or London. 
When shall you go? Our team will provide a table of predicted weather so you know the best time go best on your comfort level. 
Would you like to build an itenerary? We've got a map of the city that is layered with hotels, points of interests, and restaurants options.

## Dashboard:
https://public.tableau.com/app/profile/laura.clark2190/viz/VacationProject/VacationStory?publish=yes

![VacationStory](https://user-images.githubusercontent.com/82008319/135797705-0cc8d86a-25cf-4cff-bf5e-5247bb18df33.png)

![VacationStory (1)](https://user-images.githubusercontent.com/82008319/135797724-f6bf793d-989a-4140-9e7d-0a10ced102c5.png)

## Tools & Technologies: 
<li>	Excel for initial csv file data exploration and some cleaning. </li> <br/> 

<li>	Jupiter Notebook using Python & PANDAS library to further explore data, clean the data, and train the model. </li> <br/> 

<li>	Data Storage: Chose to change from Mongo DB to a PostgreSQL DB with this deliverable to store our weather data for predictive modeling. Please see the schema below. </li> <br/> 

![image](https://user-images.githubusercontent.com/82008319/134836752-e36d1b39-bd09-4849-a8a6-cb9532132fef.png)

<li>	Tableau to develop our interactive dashboard and create a layered map with points of interest for a vacation in NYC or London. Points of interest will include hotels, eateries, and attractions and will be loaded with csv files.</li> <br/> 

<li>	Updated our Machine Learning Model from Neural Network Model to a simpler Linear Regression Model. Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model. We made this change because we felt the linear model was easier to leverage and more effectively provided the predictions we wanted for our project. By utilizing this model, however, we lose the ability to customize various options such as the number of hidden layers, the number of neurons in each hidden layer, and activation functions.

![image](https://user-images.githubusercontent.com/82008319/134836194-cd427175-982d-4940-abb0-d5eb37843ac9.png)

A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature. The weather features that our models predict are:

<li>	average monthly high temperature</li> 
<li>	total monthly rainfall</li> 
<li>	total monthly snowfall (NYC only)</li> 
<li>	total monthly sunshine hours (London only)</li> <br/>  

## Model Performance:
Model performance varied. Some factors influencing this include:

<li>	monthly weather variance from year to year</li> 
<li>	varying makeup of training and testing data</li>  
<li>	varying weather features and scales</li> <br/>   

## Weather Predictions:
Once our weather predictions were created, we iterated through several layouts and color schemes so the tables are as easy for our customer to interpret as possible. We used a number of suggestions from Storytelling with Data: A Data Visualization Guide for Business Professionals by Cole Nussbaumer Knaflic to help reduce clutter and increase clarity. We also used an online simulator to ensure that those who are color blind can differentiate between highs and lows.

![image](https://user-images.githubusercontent.com/82008319/135797597-3cff15eb-d831-436b-89aa-744347d9bd05.png) <br/>  

![image](https://user-images.githubusercontent.com/82008319/135797610-75fcc171-9880-4776-916e-ba4432b553d8.png)

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
Although it needed heavy editing and some geocoordinates from an API, this had the information about the name and address. <br/><br/>

NEW YORK CITY:<br/>
Data.gov was used and these were all the datasets pulled<br/>
<li>	https://catalog.data.gov/dataset/new-york-city-museums </li> 
<li>	https://catalog.data.gov/dataset/new-york-city-art-galleries </li> 
<li>	https://catalog.data.gov/dataset/new-york-city-water-trail-kayak-and-canoe-launch-sites </li> 
<li>  https://catalog.data.gov/dataset/directory-of-temporary-public-art </li> 
<li>	https://catalog.data.gov/dataset/nyc-parks-monuments </li> <br/>
Although the format differed between most of the datasets, they all had a name, most had an address, and all had latitude and longitude in one form or another<br/><br/>

### Restaurants:
https://www.yelp.com/developers/documentation/v3/business_search<br/>
We originally were going to use YELP dataset via Kaggle, however found that the dataset offered was limited. For example there were only three restaurants in NYC. Therefore, we decided to utilize the Yelp Business Search API. Next, we found that YELP set a data limit of 200 records (50/call up to 4 calls with the set parameters). Hence, we created different parameters by choosing different restaurant types to build our dataset. Continuing with the NYC Restaurant example we went from 3 records in Deliverable 1, to 200 for Deliverable 2, and finished up with just over 4,400 records for Deliverable 3.<br/><br/>

