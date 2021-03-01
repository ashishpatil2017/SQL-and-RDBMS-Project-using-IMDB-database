DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenreOftheMovie`()
BEGIN 
	select m.name, g.genre from movies m JOIN movies_genres g on m.id = g.movie_id limit 20;
END$$
DELIMITER ;