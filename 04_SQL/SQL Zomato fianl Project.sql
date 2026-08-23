CREATE DATABASE zomato_anaysis;
USE zomato_anaysis;
select * from calendar;
ALTER TABLE main  ADD COLUMN Opening_Date DATE;
SET sql_safe_updates=0;
UPDATE main
SET Opening_Date = STR_TO_DATE(CONCAT(`Year Opening`, '-', `Month Opening`, '-', `Day Opening`), '%Y-%m-%d');
	
#Q2: Calendar Table

CREATE TABLE calendar (
    DateKey DATE PRIMARY KEY
);

SET SESSION cte_max_recursion_depth = 5000;
INSERT INTO calendar (DateKey)
WITH RECURSIVE dates AS (
    SELECT MIN(Opening_Date) AS DateKey
    FROM main

    UNION ALL

    SELECT DATE_ADD(DateKey, INTERVAL 1 DAY)
    FROM dates
    WHERE DateKey < (
        SELECT MAX(Opening_Date)
        FROM main
    )
)
SELECT * FROM calendar;


# Add Year and Month Number

ALTER TABLE calendar
ADD COLUMN Year INT,
ADD COLUMN MonthNo INT;

UPDATE calendar
SET
Year = YEAR(DateKey),
MonthNo = MONTH(DateKey);
select * from calendar;

# month full name
ALTER TABLE Calendar
ADD COLUMN MonthFullName VARCHAR(20);

UPDATE Calendar
SET MonthFullName = MONTHNAME(DateKey);

select * from calendar;

# Add Quater (Q1, Q2, Q3, Q4)

ALTER TABLE Calendar
ADD COLUMN Quarter VARCHAR(2);

UPDATE Calendar
SET Quarter = CONCAT('Q', QUARTER(DateKey));

select * from calendar;

# Add yearmonth (YYYYY - MMM)

ALTER TABLE Calendar
ADD COLUMN YearMonth VARCHAR(10);

UPDATE Calendar
SET YearMonth = DATE_FORMAT(DateKey,'%Y-%b');


# F. Weekdayno

ALTER TABLE Calendar
ADD COLUMN WeekdayNo INT;

UPDATE Calendar
SET WeekdayNo = DAYOFWEEK(DateKey); 

# G. Weekdayname

ALTER TABLE Calendar
ADD COLUMN WeekdayName VARCHAR(10);

UPDATE Calendar
SET WeekdayName = DAYNAME(DateKey);


# H. FinancialMOnth

ALTER TABLE Calendar
ADD COLUMN FinancialMonth VARCHAR(5);

UPDATE Calendar
SET FinancialMonth = CONCAT('FM',
    CASE
        WHEN MONTH(DateKey) >= 4 THEN MONTH(DateKey) - 3
        ELSE MONTH(DateKey) + 9
    END);

select * from calendar;


ALTER TABLE Calendar
ADD COLUMN FinancialQuarter VARCHAR(5);


# I. FinancialQuarter


UPDATE Calendar
SET FinancialQuarter =
CASE
    WHEN MONTH(DateKey) IN (4,5,6) THEN 'FQ1'
    WHEN MONTH(DateKey) IN (7,8,9) THEN 'FQ2'
    WHEN MONTH(DateKey) IN (10,11,12) THEN 'FQ3'
    WHEN MONTH(DateKey) IN (1,2,3) THEN 'FQ4'
END;

SELECT * FROM Calendar;


#-------------------------------------------------------------

# Q3 

DESCRIBE main;
DESCRIBE currency;

ALTER TABLE main
ADD COLUMN AverageCostUSD DECIMAL(10,2);

ALTER TABLE currency
CHANGE COLUMN `ï»¿Currency` Currency TEXT;

SET SQL_SAFE_UPDATES = 0;

UPDATE main m
JOIN currency c
ON m.Currency = c.Currency
SET m.AverageCostUSD = ROUND(
    m.Average_Cost_for_two * c.`USD Rate`,
    2
);

SELECT
    RestaurantName,
    Currency,
    Average_Cost_for_two,
    AverageCostUSD
FROM main
LIMIT 20;

#------------------------------------------------------------------

# Q4

ALTER TABLE country
CHANGE COLUMN `ï»¿CountryID` CountryID INT;

SELECT
    c.CountryName,
    m.City,
    COUNT(m.`ï»¿RestaurantID`) AS RestaurantCount
FROM main m
JOIN country c
ON m.CountryCode = c.CountryID
GROUP BY c.CountryName, m.City
ORDER BY c.CountryName, m.City;

#---------------------------------------------------------------

# Q No 5

ALTER TABLE MAIN
CHANGE COLUMN `ï»¿RestaurantID` RestaurantID INT;

SELECT
    YEAR(Opening_Date) AS Opening_Year,
    QUARTER(Opening_Date) AS Opening_Quarter,
    MONTHNAME(Opening_Date) AS Opening_Month,
    COUNT(RestaurantID) AS Total_Restaurants
FROM main
GROUP BY
    YEAR(Opening_Date),
    QUARTER(Opening_Date),
    MONTH(Opening_Date),
    MONTHNAME(Opening_Date)
ORDER BY
    Opening_Year,
    Opening_Quarter,
    MONTH(Opening_Date);
    
    select *from main;
    
    # Q No 6
    SELECT
    Rating AS Average_Rating,
    COUNT(RestaurantID) AS Restaurant_Count
FROM MAIN
GROUP BY Rating
ORDER BY Rating;

-- Q7
DESCRIBE main;

SELECT
    CASE
        WHEN Average_Cost_for_two <= 500 THEN 'Low (0-500)'
        WHEN Average_Cost_for_two <= 1000 THEN 'Medium (501-1000)'
        WHEN Average_Cost_for_two <= 2000 THEN 'High (1001-2000)'
        ELSE 'Luxury (Above 2000)'
    END AS Price_Bucket,
    COUNT(RestaurantID) AS Restaurant_Count
FROM main
GROUP BY Price_Bucket
ORDER BY MIN(Average_Cost_for_two);

-- Q8
SELECT
    Has_Table_booking,
    COUNT(RestaurantID) AS Restaurant_Count,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM main), 2) AS Percentage
FROM main
GROUP BY Has_Table_booking;

-- Q9
SELECT
    Has_Online_delivery,
    COUNT(*) AS Restaurant_Count,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM main), 2) AS Percentage
FROM main
GROUP BY Has_Online_delivery;

SELECT *FROM MAIN;

-- Q10
SELECT Cuisines,
       COUNT(RestaurantID) AS RESTAURANTS
FROM MAIN
GROUP BY cuisines
ORDER BY RESTAURANTS DESC
LIMIT 10;

-- Q11
SELECT
    CASE 
    WHEN Rating>=4.5 THEN "EXCELLENT"
    WHEN RATING>=4 THEN "VERY GOOD"
    WHEN RATING>=3 THEN "GOOD"
    WHEN RATING>=2 THEN "AVERAGE"
    ELSE "POOR"
    END AS RATING_CATEGORY,
	COUNT(*) AS RESTAURANTS
FROM MAIN
GROUP BY RATING_CATEGORY
ORDER BY RESTAURANTS DESC;

-- Q12
SELECT CITY,
ROUND(AVG(RATING),2) AS AVERAGE_RATING
FROM MAIN
GROUP BY CITY 
ORDER BY AVERAGE_RATING DESC;
