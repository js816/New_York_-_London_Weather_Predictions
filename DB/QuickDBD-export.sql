-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "london_weather_yyyy_mm" (
    "index" int   NOT NULL,
    "year" int   NOT NULL,
    "month_num" int   NOT NULL,
    "avg_high_temp_f" num   NOT NULL,
    "avg_low_temp_f" num   NOT NULL,
    "total_rainfall_inches" num   NOT NULL,
    "days_of_air_frost" int   NOT NULL,
    "total_sunshine_duration_hours" num   NOT NULL,
    CONSTRAINT "pk_london_weather_yyyy_mm" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "nyc_weather_yyyy_mm" (
    "index" int   NOT NULL,
    "year" int   NOT NULL,
    "month_num" int   NOT NULL,
    "avg_high_temp_f" num   NOT NULL,
    "avg_low_temp_f" num   NOT NULL,
    "avg_total_precipitation_inches" num   NOT NULL,
    "avg_total_snowfall_inches" num   NOT NULL,
    CONSTRAINT "pk_nyc_weather_yyyy_mm" PRIMARY KEY (
        "index"
     )
);

