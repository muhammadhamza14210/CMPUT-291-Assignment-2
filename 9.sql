--Question 9 mhamza2
SELECT *
FROM ( SELECT 'Netflix' as Platform, N.Title, I.Revenue
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Netflix = 1 AND N.Disney = 0 AND N.PrimeVideo = 0 AND N.Hulu = 0
				 ORDER BY I.Revenue DESC
				 LIMIT 1)
UNION
SELECT *
FROM ( SELECT 'Hulu' as Platform, N.Title, I.Revenue
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Netflix = 0 AND N.Disney = 0 AND N.PrimeVideo = 0 AND N.Hulu = 1
				 ORDER BY I.Revenue DESC
				 LIMIT 1)
UNION
SELECT *
FROM ( SELECT 'Disney' as Platform, N.Title, I.Revenue
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Netflix = 0 AND N.Disney = 1 AND N.PrimeVideo = 0 AND N.Hulu = 0
				 ORDER BY I.Revenue DESC
				 LIMIT 1)
UNION
SELECT *
FROM ( SELECT 'PrimeVideo' as Platform, N.Title, I.Revenue
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Netflix = 0 AND N.Disney = 0 AND N.PrimeVideo = 1 AND N.Hulu = 0
				 ORDER BY I.Revenue DESC
				 LIMIT 1)