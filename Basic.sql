/* Strange queries */
SELECT TOP 1 salary * months, COUNT(*) 
FROM employee 
GROUP BY salary * months 
ORDER BY salary * months DESC;

/* add and round */
SELECT ROUND(SUM(lat_n),2), ROUND(SUM(long_w),2) 
FROM station;

/* Like Excel's =sumif() */
SELECT TRUNCATE(SUM(lat_n),4) 
FROM station 
WHERE lat_n BETWEEN 38.788 AND 137.2345;

/* What is the longitude of the northernmost station below latitude 137 */
SELECT TOP 1 ROUND(long_w,4) 
FROM station 
WHERE lat_n < 137.2345 
ORDER BY lat_n DESC;

SELECT TOP 1 CAST(LONG_W AS DECIMAL (10,4)) FROM STATION
WHERE LAT_N > 38.778
ORDER BY LAT_N ASC;
