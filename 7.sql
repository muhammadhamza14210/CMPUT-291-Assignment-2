--Question 7 mhamza2
SELECT Title
FROM IMDBMovie I
WHERE I.Title NOT IN (
						SELECT Title from NPHDMovies N) 
						AND INSTR(I.Actors, I.Director);
