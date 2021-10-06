# Final_Project_Travel


# Machine Learning Model

![final_linear_model](https://user-images.githubusercontent.com/82730954/136079845-1f5e5909-5d6d-41d7-bf96-9038013dde8d.png)


## Model selection

For our ML model, we revisited an earlier idea of a simple linear regression model.  Upon reviewing some preliminary trends, we decided to select this model instead of our previously identified neural network model.  We made this change because we felt the linear model was easier to leverage and more effectively provided the predictions we wanted for our project.  By utilizing this model, however, we lose the ability to customize various options such as the number of hidden layers, the number of neurons in each hidden layer, and activation functions.  

## Model development

Historical weather data was accessed from a PostgreSQL database.  A separate model was developed for each city (London and New York City), for each month of the year, and for each weather feature.  The weather features that our models predict are:
* average monthly high temperature
* total monthly rainfall
* total monthly snowfall (NYC only)
* total monthly sunshine hours (London only)

Minimal data cleaning was performed during the EDA and prior to the data being stored in the database.  Rows were removed where values were missing.  Indicators (#) of changes in sunshine measurement devices were removed from the value.  Our dataset does not contain any categorical data thus no encoding was performed.  

We used Scikit-learn's train_test_split to separate our dataset into training sets and testing sets.  Each model is trained on 75% of the dataset and tested on the remaining 25%.  To evaluate our models, we utilized Mean Squared Error (MSE).  

We compared performance of these individual-month models to models that included data for all months and used month number as an input.  When comparing model performance, the individual-month models generally had much better performance.  For the rainfall model, however, the combined model performed slightly better.  For consistency purposes, all models were broken out into individual months.  

In preliminary versions of our models, graphs were created with a scatter plot for training and testing data and a line for the prediction model.  Our final model does not create these.

## Prediction creation

To create the predicted weather ranges for each city, we used the Mean Absolute Error (MAE) -/+ the predicted value.  We then rounded the total rainfall and snowfall to the nearest tenth of an inch.  For temperature and sunshine hours, we rounded down to the nearest integer for the low end of the prediction range and up to the nearest integer for the high end of the range.  

Initially we planned to show predictions for 2022 and 2023 but we found these ranges were nearly identical thus we only show one column for each weather feature.  An example for London is shown below:

![image](https://user-images.githubusercontent.com/82730954/134777236-cacda1c0-c73a-4030-aac7-fce428254126.png)

## Comparing simple linear model to neural network

To ensure that we use the most appropriate model, we also created a neural network linear model and compared model performance.  We found that overall, model performance was generally better with the simple linear model.  For isolated months for some features had better performance.  For rainfall data the neural network model was slightly better.  Though the impact to our predictions would have been very minimal.  With greater customization of the various options, neural networks could prove to provide better experience at some point.  However, due to the simplicity and ease of use and interpretation, we decided to use the simple linear model for all predictions.  

## Model performance

Model performance varied.  Some factors influencing this include:
* monthly weather variance from year to year
* varying makeup of training and testing data
* varying weather features and scales

![model_mse](https://user-images.githubusercontent.com/82730954/135939879-28679f09-6164-471b-9c31-50c2fb40d92e.png)

Full model results and performance are include in the appendix below.

For future analysis, we should compare our predictions to the actual weather conditions for each month for 2022 and 2023.  This will allow us to evaluate the effectiveness of our models and prediction approach.

## Weather predictions

Once our weather predictions were created, we iterated through several layouts and color schemes so the tables are as easy for our customer to interpret as possible.  We used a number of suggestions from *Storytelling with Data: A Data Visualization Guide for Business Professionals* by Cole Nussbaumer Knaflic to help reduce clutter and increase clarity.  We also used an [online simulator](https://www.color-blindness.com/coblis-color-blindness-simulator/) to ensure that those who are color blind can differentiate between highs and lows.

![london_weather_predictions](https://user-images.githubusercontent.com/82730954/135716643-937406d0-f9c1-4d93-bcc2-7e65f742f486.png)

![nyc_weather_predictions](https://user-images.githubusercontent.com/82730954/135716650-302853ec-9704-4b79-9fdb-63bf243a4480.png)


# Technologies

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
* Total monthly sunshine (the device for measuring sunshine changed 9/2005.  Removed # indicator from sunshine data in Excel using substitute formula suggested here:  https://spreadsheetplanet.com/remove-specific-character-from-string-excel/)

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

Latitude and longitude coordinates were added to this dataset.  Upon pivoting the data, there were approximately 20 hotels represented by the reviews.  Google Maps was used to obtain the coordinates and these were added to the reviews using a vlookup in Excel.  The reviews file was then saved in a CSV format with the two new columns.

# Appendix

## High temperature model

![high_temp_model_results](https://user-images.githubusercontent.com/82730954/135890535-8ca84216-a579-48b2-85c6-4b1f30328898.PNG)


## Precipitation model results

![precip_model_results](https://user-images.githubusercontent.com/82730954/135890616-8624e22b-626f-4a1c-9cc9-4b03da48c149.png)


## NYC snowfall model results

![snowfall_model_results](https://user-images.githubusercontent.com/82730954/135890649-b8bbb2a8-10b5-450d-8a2c-c2a16bc9eeac.png)


## London sunshine model results

![sunshine_model_results](https://user-images.githubusercontent.com/82730954/135890676-b4e9b1fb-8826-4c32-ac78-e5e00b0c6089.png)
