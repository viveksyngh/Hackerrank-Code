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
 
Write a query to print the list of CITY that does not start with vowels and does not end with vowels in lexicographical order. Do not print duplicates.
*/

--Solution

select distinct city from station where regexp_like(city, '^[^aeiouAEIOU].*[^aeiouAEIOU]$');
