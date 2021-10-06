-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

CREATE TABLE "london" (
    "Name" text   NOT NULL,
    "Geometry" text   NOT NULL,
    "Address" text   NOT NULL,
    "Lattitude" text   NOT NULL,
    "Longitude" text   NOT NULL,
    "Category" text   NOT NULL
);

CREATE TABLE "new_york" (
    "Name" text   NOT NULL,
    "Geometry" text   NOT NULL,
    "Address" text   NOT NULL,
    "Lattitude" text   NOT NULL,
    "Longitude" text   NOT NULL,
    "Category" text   NOT NULL,
    CONSTRAINT "pk_new_york" PRIMARY KEY (
        "Name"
     )
);

CREATE TABLE "ny_extra" (
    "Name" text   NOT NULL,
    "Details" text   NOT NULL,
    CONSTRAINT "pk_ny_extra" PRIMARY KEY (
        "Name"
     )
);

CREATE TABLE "new_york_joined" (
    "Name" text   NOT NULL,
    "Geometry" text   NOT NULL,
    "Address" text   NOT NULL,
    "Lattitude" text   NOT NULL,
    "Longitude" text   NOT NULL,
    "Category" text   NOT NULL,
    "Details" text   NOT NULL,
    CONSTRAINT "pk_new_york_joined" PRIMARY KEY (
        "Name"
     )
);

ALTER TABLE "london_weather_yyyy_mm" ADD CONSTRAINT "fk_london_weather_yyyy_mm_index" FOREIGN KEY("index")
REFERENCES "nyc_weather_yyyy_mm" ("index");

ALTER TABLE "new_york" ADD CONSTRAINT "fk_new_york_Name" FOREIGN KEY("Name")
REFERENCES "ny_extra" ("Name");

ALTER TABLE "ny_extra" ADD CONSTRAINT "fk_ny_extra_Name" FOREIGN KEY("Name")
REFERENCES "new_york_joined" ("Name");

ALTER TABLE "new_york_joined" ADD CONSTRAINT "fk_new_york_joined_Name_Geometry_Address_Lattitude_Longitude_Category" FOREIGN KEY("Name", "Geometry", "Address", "Lattitude", "Longitude", "Category")
REFERENCES "new_york" ("Name", "Geometry", "Address", "Lattitude", "Longitude", "Category");

ALTER TABLE "new_york_joined" ADD CONSTRAINT "fk_new_york_joined_Details" FOREIGN KEY("Details")
REFERENCES "ny_extra" ("Details");

