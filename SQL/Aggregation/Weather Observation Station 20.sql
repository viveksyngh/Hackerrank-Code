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
 
Print the median of Northern Latitude values up to 4 decimal places.

*/

--Solution

SELECT CAST(LAT_N AS DECIMAL (7,4))
FROM
	(SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) as ROWNU 
	 FROM STATION 
	 ) AS X
WHERE ROWNU = ( SELECT ROUND((COUNT(LAT_N)+1)/2,0) 
				FROM STATION
			   );