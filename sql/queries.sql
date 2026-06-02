SELECT *
FROM properties;

SELECT AVG(price)
FROM properties;

SELECT location, AVG(price)
FROM properties
GROUP BY location;
