CREATE VIEW BestActors AS
select first_name,last_name,avg(rankscore) avg_rankscore
from actors a join roles r on a.id = r.actor_id join movies m on m.id = r.movie_id 
group by actor_id having avg_rankscore > 9 limit 5

