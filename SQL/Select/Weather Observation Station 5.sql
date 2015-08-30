--Problem STATEMENT
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
 
Let |city| be the length of the city, write a query to print two lines:
1. First line is city1 and |city1| separated by space, where |city1| is the possible minimum value.
2. Second line is city2 and |city2| separated by space, where |city2|  is the possible maximum value.
If there are more than one possible cities print the lexicographical smallest.

*/

--Solution

SELECT CITY || ' ' || LENGTH 
FROM (
SELECT CITY , LENGTH(CITY) AS LENGTH
FROM STATION 
WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION) 
ORDER BY CITY ) 
WHERE ROWNUM <= 1
UNION
SELECT CITY || ' ' || LENGTH 
FROM (
SELECT CITY , LENGTH(CITY) AS LENGTH
FROM STATION 
WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) 
ORDER BY CITY ) 
WHERE ROWNUM <= 1 ;