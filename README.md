# Final_Project_Travel

# Communication protocol
First step - use group slack channel.

If no response within a day or in case of an emergency, use group or individual text message.


# Machine Learning Model

![ML_mock_up](https://user-images.githubusercontent.com/82730954/132999771-d43477d1-127c-437c-9d9d-f4c265174024.PNG)

For our ML model, a neural network was selected to take in the inputs (including minimum temperature, precipitation/snowfall, and, for London, air frost days and monthly sun hours).  This model was selected in an attempt to leverage the flexibility of the various hidden layers, neurons, activation functions, etc.

The input data is scaled and our model is fitted on the training subset.  Our model then predicts the monthly mean high temperature for the testing subset.  The model is evaluated based upon loss and mean squared error (MSE).

We’re hopeful that our model can be used to present months that match a travelers desired high temperature.


# Technologies to be used

* Tableau for mapping and prompting user to select desired temperature
* MongoDB for storage and retrieval
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
