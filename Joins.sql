/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

select sum(city.population)
from city
join country
on city.countrycode = country.code
where country.continent = "Asia";


/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

select city.name 
from city
join country
on city.countrycode = country.code
where country.continent = "Africa";


/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

select distinct country.continent, avg(city.population)
from city
join country
on city.countrycode = country.code
group by country.continent;

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

/* What is the longitude of the northernmost station below latitude 137 8/
select top 1 round(long_w,4) 
from station 
where lat_n < 137.2345 
order by lat_n desc;
