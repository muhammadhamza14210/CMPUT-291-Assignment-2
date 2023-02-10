--Question 5 mhamza2
SELECT COUNT (*)
FROM NPHDMovies N 
WHERE N.Netflix = 1 AND N.PrimeVideo = 0 AND N.Hulu = 0 AND N.Disney = 0  AND 
										(SELECT COUNT(*)
										  FROM IMDBMovie I
										  WHERE I.Title = N.Title AND I.Genre LIKE '%Drama%')