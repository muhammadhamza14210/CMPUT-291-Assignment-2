--Question 9 mhamza2
SELECT *
FROM ( SELECT 'Netflix' as Platform, N.Title,MAX(I.Revenue)
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Netflix = 1)
UNION
SELECT *
FROM ( SELECT 'Hulu' as Platform, N.Title,MAX(I.Revenue)
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND  N.Hulu = 1)
UNION
SELECT *
FROM ( SELECT 'Disney' as Platform, N.Title,MAX(I.Revenue)
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND N.Disney = 1)
UNION
SELECT *
FROM ( SELECT 'PrimeVideo' as Platform, N.Title, MAX(I.Revenue)
				 FROM IMDBMovie I, NPHDMovies N
				 WHERE I.Title = N.Title AND  N.PrimeVideo = 1 )
