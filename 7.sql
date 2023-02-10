--Question 7 mhamza2
SELECT DISTINCT(I.Title)
FROM IMDBMovie I, NPHDMovies N
WHERE I.Title != N.Title AND instr(I.Actors,I.Director)