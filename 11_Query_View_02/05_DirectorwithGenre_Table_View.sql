CREATE VIEW DirectorwithGenre AS
select d.first_name,d.last_name,dg.genre,dg.prob
from directors d join directors_genres dg on d.id = dg.director_id 
where dg.genre = 'Comedy' order by prob desc
