# JOINS
# A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
# The relationship between the two tables above is the "CustomerID" column.

# Horizontal JOIN - CROSS, INNER, LEFT, RIGHT
# Vertical JOIN - UNION ALL, UNION DISTINCT, INTERSECT, 

-- comment
/*
INNER JOIN: Returns records that have matching values in both tables
LEFT JOIN: Returns all records from the left table, and the matched records (if any) from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records (if any) from the left table
CROSS JOIN: Returns all records from both tables

The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not. 
If you add a WHERE clause (if table1 and table2 has a relationship), the CROSS JOIN will produce the same result as the INNER JOIN clause:

SELF JOIN: Join table with itself with INNER, LEFT, RIGHT, CROSS
*/

CREATE DATABASE db_test;
USE db_test;

CREATE TABLE tbl_joins_1(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    age INT CHECK(age < 200)
);

CREATE TABLE tbl_joins_2(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    age INT CHECK(age < 200)
);

INSERT INTO tbl_joins_1
VALUES
(1, "Hithesh", 27),
(2, "Iithesh", 38),
(3, "Jithesh", 49);

INSERT INTO tbl_joins_2
VALUES
(3, "Kithesh", 57),
(4, "Lithesh", 68),
(5, "Mithesh", 79);

# INNER JOIN
SELECT * FROM tbl_joins_1 AS T1 INNER JOIN tbl_joins_2; # INNER JOIN without ON condition seems to be CROSS JOIN
SELECT * FROM tbl_joins_1 AS T1 INNER JOIN tbl_joins_2 AS T2 ON T1.id = T2.id;

# LEFT JOIN
SELECT * FROM tbl_joins_1 AS T1 LEFT JOIN tbl_joins_2 AS T2 ON T1.id = T2.id;

# RIGHT JOIN
SELECT * FROM tbl_joins_1 AS T1 RIGHT JOIN tbl_joins_2 AS T2 ON T1.id = T2.id;

# CROSS JOIN
SELECT * FROM tbl_joins_1 AS T1 CROSS JOIN tbl_joins_2 AS T2;
SELECT * FROM tbl_joins_1 AS T1 CROSS JOIN tbl_joins_2 AS T2 WHERE T1.id = T2.id; # CROSS JOIN with filter is INNER JOIN







