-- Create Database
CREATE DATABASE dubai_real_estate;

-- Use Database
USE dubai_real_estate;

-- Create Table
CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    location VARCHAR(100),
    property_type VARCHAR(50),
    bedrooms INT,
    bathrooms INT,
    square_feet FLOAT,
    price FLOAT,
    rent FLOAT,
    property_age INT
);

-- Total Listings
SELECT COUNT(*) AS total_listings
FROM properties;

-- Average Property Price
SELECT AVG(price) AS average_price
FROM properties;

-- Highest Property Price
SELECT MAX(price) AS highest_price
FROM properties;

-- Average Price Per Square Foot
SELECT AVG(price / square_feet) AS avg_price_per_sqft
FROM properties;

-- Average Property Size
SELECT AVG(square_feet) AS avg_property_size
FROM properties;

-- Top 10 Expensive Locations
SELECT location,
       AVG(price) AS avg_price
FROM properties
GROUP BY location
ORDER BY avg_price DESC
LIMIT 10;

-- Property Distribution by Type
SELECT property_type,
       COUNT(*) AS total_properties
FROM properties
GROUP BY property_type;

-- Bedrooms vs Average Price
SELECT bedrooms,
       AVG(price) AS avg_price
FROM properties
GROUP BY bedrooms
ORDER BY bedrooms;

-- Rental Trend Analysis
SELECT location,
       AVG(rent) AS avg_rent
FROM properties
GROUP BY location
ORDER BY avg_rent DESC;

-- Property Age Distribution
SELECT property_age,
       COUNT(*) AS total_properties
FROM properties
GROUP BY property_age
ORDER BY property_age;
