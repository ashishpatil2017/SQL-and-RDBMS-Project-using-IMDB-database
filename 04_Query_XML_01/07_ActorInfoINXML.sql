DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActorInfoInXML`()
BEGIN 
	select concat(
	'<Cast>',
	group_concat('<Actors>' ' <First Name> ', a.first_name , '</First Name>' ' <Last Name> ', a.last_name , 
    '</Last Name>' ' <Role> ', r.role , '</Role>' '</Actors>' separator ''),
    '</Cast>') as xmldoc from actors a join roles r on a.id = r.actor_id join movies m on m.id = r.movie_id 
	where m.name = 'Next Friday';
END$$
DELIMITER ;