/* Strange queries */
SELECT TOP 1 salary * months, COUNT(*) 
FROM employee 
GROUP BY salary * months 
ORDER BY salary * months DESC;

/* add and round */
SELECT round(sum(lat_n),2), round(sum(long_w),2) 
FROM station;

/* Like Excel's =sumif() */
select truncate(sum(lat_n),4) 
from station 
where lat_n between 38.788 and 137.2345;

/* What is the longitude of the northernmost station below latitude 137 */
select top 1 round(long_w,4) 
from station 
where lat_n < 137.2345 
order by lat_n desc;

SELECT TOP 1 CAST(LONG_W AS DECIMAL (10,4)) FROM STATION
WHERE LAT_N > 38.778
ORDER BY LAT_N ASC;
