/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT SUM(City.population)
FROM City
JOIN Country
ON City.countrycode = Country.code
WHERE Country.continent = "Asia";


/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT City.name 
FROM City
JOIN Country
ON City.countrycode = Country.code
WHERE Country.continent = "Africa";


/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT DISTINCT Country.continent, AVG(City.population)
FROM City
JOIN Country
ON City.countrycode = Country.code
GROUP BY Country.continent;

/* This is getting out of hand */
SELECT h.hacker_id, h.name, Sum(s.score)
  FROM Submissions s
  INNER JOIN Challenges c
    ON s.challenge_id = c.challenge_id
  INNER JOIN Difficulty d
    ON c.difficulty_level = d.difficulty_level 
  INNER JOIN Hackers h
    ON s.hacker_id = h.hacker_id
WHERE s.score = d.score AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
