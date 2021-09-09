# Final_Project_Travel

# Communication protocol
First step - use group slack channel.

If no response within a day or in case of an emergency, use group or individual text message.

# Datasets

## Weather data

### London

Source:  https://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/heathrowdata.txt
More information:  https://www.metoffice.gov.uk/research/climate/maps-and-data/historic-station-data

The dataset contains monthly weather data for Heathrow (London Airport) from January 1948 - August 2021.  This dataset contains 884 rows and 7 columns of labels and values.  Each month includes details such as:
* Mean daily maximum temperature
* Mean daily minimum temperature
* Total rainfall

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