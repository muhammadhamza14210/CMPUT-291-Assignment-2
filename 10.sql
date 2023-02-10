--Question 10 mhamza2
WITH high_rated_movies AS (
  SELECT I.Director, COUNT(*) AS num_movies, SUM(I.Rating > 8.0) AS num_high_rated_movies
  FROM IMDBMovie I
  GROUP BY I.Director
  HAVING num_movies = num_high_rated_movies
)
SELECT CAST(round(100.0 * COUNT(*) / (SELECT COUNT(DISTINCT I.Director) FROM IMDBMovie I) ,2) AS REAL) AS Percentage
FROM high_rated_movies;