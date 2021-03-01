delimiter $$
CREATE FUNCTION NumberofMoviesInaYear(year INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE NumberofMovies INT;
select count(*) into NumberofMovies
from movies m where m.year = year;
RETURN NumberofMovies;
END$$