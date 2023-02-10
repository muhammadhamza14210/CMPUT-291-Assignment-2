--Question 8 mhamza2
SELECT N.Year,
COUNT(CASE 
		WHEN N.PrimeVideo AND I.Genre LIKE '%Drama%' THEN 1 END) 
AS Number_of_movies_per_year
FROM NPHDMovies N, IMDBMovie I
WHERE N.Title = I.Title
GROUP BY N.Year