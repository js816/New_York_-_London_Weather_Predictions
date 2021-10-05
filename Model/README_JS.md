# Final_Project_Travel

# Communication protocol
First step - use group slack channel.

If no response within a day or in case of an emergency, use group or individual text message.


# Machine Learning Model

![final_linear_model](https://user-images.githubusercontent.com/82730954/136079845-1f5e5909-5d6d-41d7-bf96-9038013dde8d.png)


For our ML model, we revisited an earlier idea of a simple linear regression model.  Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model.  We made this change because we felt that the model was easier to leverage and more effectively provided the predictions we wanted for our project.  By utilizing this model, however, we lose the ability to leverage various options such as the number of hidden layers, the number of neurons in each hidden layer, and various activation functions.

Historical weather data is accessed from a PostgreSQL database.  A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature.  The weather features that our models predict are:
* average monthly high temperature
* total monthly rainfall
* total monthly snowfall (NYC only)
* total monthly sunshine hours (London only)

Minimal data cleaning was performed during the EDA and prior to the data being stored in the database.  Months were removed where values were missing.  Indicators of changes in sunshine measurement devices were removed from the value.  Our dataset does not contain any categorical data thus no encoding was performed.  

We used Scikit-learn's train_test_split to separate our dataset into training sets and testing sets.  Each model is trained on 75% of the dataset and tested on the remaining 25%.  To evaluate our models, we utilized Mean Squared Error.  

We compared performance of these models to models that included data for months and used month as an input.  When comparing model performance, the individual monthly models generally had much better performance.  For the rainfall model, however, the combined model performed slightly better.  For consistency purposes, all models were broken out into individual months.  Graphs were created with a scatter plot for training and testing data and a line for the prediction model.  To create the predicted weather ranges for each city, we used the Mean Absolute Error -/+ the predicted value.  We then rounded the total rainfall to the nearest tenth of an inch.  For other weather features, we rounded down to the nearest integer for the low end of the prediction range and up to the nearest integer for the high end of the range.  An example for London is shown below:

![image](https://user-images.githubusercontent.com/82730954/134411442-b45c643e-ff0f-4fd5-8904-52c72d0bb793.png)




# Technologies to be used

* Tableau for mapping and prompting user to select desired temperature
* PostgreSQL for data storage
* Jupyter Notebook for EDA, cleaning, machine learning


# Datasets

## Weather data

### London

Source:  https://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/heathrowdata.txt
More information:  https://www.metoffice.gov.uk/research/climate/maps-and-data/historic-station-data

The dataset contains monthly weather data for Heathrow (London Airport) from January 1948 - August 2021.  This dataset contains 884 rows and 7 columns of labels and values.  Each month includes details such as:
* Mean daily maximum temperature
* Mean daily minimum temperature
* Total rainfall
* Air frost days
* Total monthly sunshine  (the device for measuring sunshine changed 9/2005.  Removed # indicator from sunshine data in Excel using substitute formula suggested here:  https://spreadsheetplanet.com/remove-specific-character-from-string-excel/)

The data was loaded into a DataFrame and grouped by month.  Averages and minimum and maximum values were generated.


### New York City

Source:  https://www.weather.gov/wrh/Climate?wfo=okx

Monthly summarized data was captured for NY-Central Park Area from the site above for 1948 - 2021.  This dataset has 884 rows and 6 columns of labels and values.  Each month includes the following details:
* Mean daily maximum temperature
* Mean daily minimum temperature
* Total precipitation
* Total snowfall

Using vlookups, the data was consolidated from multiple tables and worksheets into one CSV file that mimicked the format of the London data.  The dataset was loaded into a DataFrame and grouped by month.  Averages and minimum and maximum values were captured.


### London Hotel Reviews

Latitude and longitude coordinates were added to this dataset.  Upon pivoting the data, there were approximately 20 hotels represented by the reviews.  Google Maps was used to obtain the coordinates and these were added to the reviews using a vlookup in Excel.  The reviews file was then saved in a CSV format with the two new columns.
# Final_Project_Travel


# Machine Learning Model

![image](https://user-images.githubusercontent.com/82730954/134412569-9a566a18-0e42-45be-b2c7-889253558ee8.png)

## Model selection

For our ML model, we revisited an earlier idea of a simple linear regression model.  Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model.  We made this change because we felt the linear model was easier to leverage and more effectively provided the predictions we wanted for our project.  By utilizing this model, however, we lose the ability to customize various options such as the number of hidden layers, the number of neurons in each hidden layer, and activation functions.  

## Model development

Historical weather data was accessed from a PostgreSQL database.  A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature.  The weather features that our models predict are:

# Final_Project_Travel

# Communication protocol
First step - use group slack channel.

If no response within a day or in case of an emergency, use group or individual text message.


# Machine Learning Model

![image](https://user-images.githubusercontent.com/82730954/134412569-9a566a18-0e42-45be-b2c7-889253558ee8.png)

For our ML model, we revisited an earlier idea of a simple linear regression model.  Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model.  We made this change because we felt that the model was easier to leverage and more effectively provided the predictions we wanted for our project.  By utilizing this model, however, we lose the ability to leverage various options such as the number of hidden layers, the number of neurons in each hidden layer, and various activation functions.

Historical weather data is accessed from a PostgreSQL database.  A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature.  The weather features that our models predict are:

* average monthly high temperature
* total monthly rainfall
* total monthly snowfall (NYC only)
* total monthly sunshine hours (London only)

Minimal data cleaning was performed during the EDA and prior to the data being stored in the database.  Months were removed where values were missing.  Indicators of changes in sunshine measurement devices were removed from the value.  Our dataset does not contain any categorical data thus no encoding was performed.  

We used Scikit-learn's train_test_split to separate our dataset into training sets and testing sets.  Each model is trained on 75% of the dataset and tested on the remaining 25%.  To evaluate our models, we utilized Mean Squared Error.  

We compared performance of these models to models that included data for months and used month as an input.  When comparing model performance, the individual monthly models generally had much better performance.  For the rainfall model, however, the combined model performed slightly better.  For consistency purposes, all models were broken out into individual months.  Graphs were created with a scatter plot for training and testing data and a line for the prediction model.  To create the predicted weather ranges for each city, we used the Mean Absolute Error -/+ the predicted value.  We then rounded the total rainfall to the nearest tenth of an inch.  For other weather features, we rounded down to the nearest integer for the low end of the prediction range and up to the nearest integer for the high end of the range.  An example for London is shown below:

![image](https://user-images.githubusercontent.com/82730954/134411442-b45c643e-ff0f-4fd5-8904-52c72d0bb793.png)




# Technologies to be used

* Tableau for mapping and prompting user to select desired temperature
* PostgreSQL for data storage
* Jupyter Notebook for EDA, cleaning, machine learning


# Datasets

## Weather data

### London

Source:  https://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/heathrowdata.txt
More information:  https://www.metoffice.gov.uk/research/climate/maps-and-data/historic-station-data

The dataset contains monthly weather data for Heathrow (London Airport) from January 1948 - August 2021.  This dataset contains 884 rows and 7 columns of labels and values.  Each month includes details such as:
* Mean daily maximum temperature
* Mean daily minimum temperature
* Total rainfall
* Air frost days
* Total monthly sunshine  (the device for measuring sunshine changed 9/2005.  Removed # indicator from sunshine data in Excel using substitute formula suggested here:  https://spreadsheetplanet.com/remove-specific-character-from-string-excel/)

The data was loaded into a DataFrame and grouped by month.  Averages and minimum and maximum values were generated.


### New York City

Source:  https://www.weather.gov/wrh/Climate?wfo=okx

Monthly summarized data was captured for NY-Central Park Area from the site above for 1948 - 2021.  This dataset has 884 rows and 6 columns of labels and values.  Each month includes the following details:
* Mean daily maximum temperature
* Mean daily minimum temperature
* Total precipitation
* Total snowfall

Using vlookups, the data was consolidated from multiple tables and worksheets into one CSV file that mimicked the format of the London data.  The dataset was loaded into a DataFrame and grouped by month.  Averages and minimum and maximum values were captured.

## Other data

### London Hotel Reviews

Latitude and longitude coordinates were added to this dataset.  Upon pivoting the data, there were approximately 20 hotels represented by the reviews.  Google Maps was used to obtain the coordinates and these were added to the reviews using a vlookup in Excel.  The reviews file was then saved in a CSV format with the two new columns.</br>
