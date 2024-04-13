/*
https://www.w3schools.com/mysql/mysql_ref_functions.asp
*/

# String func
SELECT CONCAT('Hitheh', ' ', 'Vadar');
SELECT INSERT('Hih', 3, 1, 'thesh'); # 3 is the position to insert "thesh", 1 is the chars to replace after 3rd pos
SELECT LENGTH('Hithesh');
SELECT LOWER('HITHESH');
SELECT UPPER('Hitheh');
SELECT POSITION('Gundam' IN 'Anime Gundam 00'); # returns 7th pos
SELECT REPEAT('Hit ', 3);
SELECT REPLACE('Hello world, my name is Hithesh. I live on world World.', 'world', 'earth'); # replaces all occurrances. Is case sensi
SELECT REVERSE('Hithesh'); # hsehtiH
SELECT SUBSTR('Hithesh', 1, 3); # Hit
SELECT TRIM('  hahaha    ');

# Numeric func
SELECT ABS(-34);
SELECT AVG(quantity) FROM tbl_customer_purchases;
SELECT CEIL(2.1);
SELECT COUNT(customer_id) FROM tbl_customer_purchases;
SELECT 8.2 DIV 2.0; # returns 4. Does int div
SELECT FLOOR(2.9);
SELECT MAX(quantity) FROM tbl_customer_purchases;
SELECT MIN(quantity) FROM tbl_customer_purchases;
SELECT POW(3, 2); # 3 ^ 2 = 9
SELECT FLOOR(RAND()*(10-5+1)+5); # random number >= 5 and <=10. returns random decimal num without seed.
SELECT ROUND(13.22121, 2);
SELECT SQRT(4);
SELECT SUM(quantity) FROM tbl_customer_purchases;

# Date func
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT DATEDIFF("2017-06-25", "2017-06-15"); # 10 days
SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY); # MICROSECOND, SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
SELECT DATE_FORMAT("2017-06-15", "%W %M %d %Y");
SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY);
SELECT EXTRACT(YEAR FROM "2017-06-15");

# Advanced func
SELECT 
	CASE 
    WHEN 3 < 4 THEN "3 is small"
    WHEN 3 > 4 THEN "Impossible"
    ELSE "Both are same"
    END;
SELECT CAST(150 AS CHAR);
SELECT CAST("14:06:10" AS TIME);
SELECT CAST("2017-08-29" AS DATE);
SELECT COALESCE(NULL, NULL, "Hithesh"); # retruns first non null value
SELECT IF(5 > 4, "great", "small");
SELECT IFNULL(NULL, "Hello");
SELECT ISNULL(NULL); # retruns 1 which is true. 0 is false.
