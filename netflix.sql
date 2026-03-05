-- netflix data analysis
-- using the netflix_titles dataset i imported from kaggle

SELECT * FROM netflix;

-- total titles
SELECT COUNT(title) as total_titles 
FROM netflix;

-- movies vs tv shows
SELECT type, COUNT(*) as total
FROM netflix
GROUP BY type;

-- percentage split
SELECT type, COUNT(*) as total,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix), 2) as percentage
FROM netflix
GROUP BY type;

-- top 10 countries
SELECT country, COUNT(*) as total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- most common ratings
SELECT rating, COUNT(*) as total
FROM netflix
GROUP BY rating
ORDER BY total DESC;

-- some ratings are showing duration values instead (data quality issue)
SELECT title, rating FROM netflix WHERE rating LIKE '%min';

-- top genres
SELECT listed_in, COUNT(*) as total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- top 10 directors (removed unknowns)
SELECT director, COUNT(*) as total
FROM netflix
WHERE director != 'Unknown'
GROUP BY director
ORDER BY total DESC
LIMIT 10;

-- avg movie duration
SELECT AVG(CAST(REPLACE(duration, ' min', '') AS UNSIGNED)) as avg_mins
FROM netflix
WHERE type = 'Movie';

-- tv shows with most seasons
SELECT title, duration
FROM netflix
WHERE type = 'TV Show'
ORDER BY CAST(REPLACE(duration, ' Seasons', '') AS UNSIGNED) DESC
LIMIT 10;

-- titles added per year
SELECT year_added, COUNT(*) as total
FROM netflix
GROUP BY year_added
ORDER BY year_added;

-- which month gets the most additions
SELECT month_name, COUNT(*) as total
FROM netflix
GROUP BY month_name, month_added
ORDER BY total DESC;

-- titles added after 2019
SELECT title, type, year_added
FROM netflix
WHERE year_added > 2019
ORDER BY date_added DESC;

-- releases by decade
SELECT CONCAT(FLOOR(release_year / 10) * 10, 's') as decade, COUNT(*) as total
FROM netflix
GROUP BY decade
ORDER BY decade;

-- countries that make both movies and tv shows
SELECT country
FROM netflix
WHERE country != 'Unknown'
GROUP BY country
HAVING SUM(type = 'Movie') > 0
AND SUM(type = 'TV Show') > 0
ORDER BY country;

-- year with most releases
SELECT release_year, COUNT(*) as total
FROM netflix
GROUP BY release_year
ORDER BY total DESC
LIMIT 1;