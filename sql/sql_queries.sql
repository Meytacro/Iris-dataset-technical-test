CREATE TABLE iris (
    sepal_length FLOAT,
    sepal_width FLOAT,
    petal_length FLOAT,
    petal_width FLOAT,
    species VARCHAR(255)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/iris.csv'
INTO TABLE iris
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';

SELECT * FROM iris
LIMIT 5;

SELECT COUNT(DISTINCT species) FROM iris;

SELECT species, AVG(sepal_length) AS average_sepal_length
FROM iris
GROUP BY species;