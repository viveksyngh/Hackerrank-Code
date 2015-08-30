--Problem Statement
/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Write a query to print the list of CITY that does not start with vowels or does not end with vowels in lexicographical order. Do not print duplicates.
*/

--Solution

SELECT DISTINCT CITY
FROM STATION
WHERE (NOT(CITY  Like 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'O%' OR CITY LIKE 'I%' OR CITY LIKE 'U%'))
		OR 
	  (NOT (CITY LIKE '%a' OR CITY  LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'))
ORDER BY CITY;