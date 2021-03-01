--Demonstrating Business case 2 : showing movies done by actors in a spacific year 
-- Example : below is the stored procedure which shows which all movies done by tom cruise in year 2001

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MoviesbyActorInaYear`()
BEGIN 
	select m.name 
	from actors a join roles r on a.id = r.actor_id join movies m on m.id = r.movie_id 
    where a.first_name = 'tom' and last_name = 'cruise' and year = '2001'
END$$
DELIMITER ;

call MoviesbyActorInaYear();


