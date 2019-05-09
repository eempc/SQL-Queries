/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT SUM(city.population)
FROM city
JOIN country
ON city.countrycode = country.code
WHERE country.continent = "Asia";


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

/* This is getting out of hand */
SELECT h.hacker_id, h.name, sum(s.score)
  FROM submissions s
  INNER JOIN challenges c
    ON s.challenge_id = c.challenge_id
  INNER JOIN difficulty d
    ON c.difficulty_level = d.difficulty_level 
  INNER JOIN hackers h
    ON s.hacker_id = h.hacker_id
WHERE s.score = d.score AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING count(s.hacker_id) > 1
ORDER BY count(s.hacker_id) DESC, s.hacker_id ASC;
