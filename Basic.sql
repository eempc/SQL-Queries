/* Strange queries */
select top 1 salary * months, count(*) 
from employee 
group by salary * months 
order by salary * months desc;

/* add and round */
select round(sum(lat_n),2), round(sum(long_w),2) 
from station;

/* Like Excel's =sumif() */
select truncate(sum(lat_n),4) 
from station 
where lat_n between 38.788 and 137.2345;

/* What is the longitude of the northernmost station below latitude 137 */
select top 1 round(long_w,4) 
from station 
where lat_n < 137.2345 
order by lat_n desc;
