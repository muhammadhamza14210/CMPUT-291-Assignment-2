--Question 6 mhamza2
SELECT I.Director
FROM IMDBMovie I, NPHDMovies N
WHERE I.Title = N.Title AND N.Disney
GROUP BY I.Director
HAVING COUNT (*) >= 2