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
 
Write a query to find the smallest value of the Northern Latitudes greater than 38.7780 up to 4 decimal places.

*/

--Solution

Select convert(decimal(20,4),min(LAT_N)) from STATION WHERE LAT_N > 38.7780;
