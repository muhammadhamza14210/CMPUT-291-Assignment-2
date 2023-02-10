--Question 4 mhamza2
SELECT COUNT (*)
FROM NPHDMovies N 
WHERE (N.Netflix*N.Hulu*N.PrimeVideo = 1)  OR  (N.Netflix * N.Hulu * N.Disney = 1) OR (N.Hulu * N.PrimeVideo * N.Disney  = 1 )  OR (N.PrimeVideo * N.Disney * N.Netflix = 1)