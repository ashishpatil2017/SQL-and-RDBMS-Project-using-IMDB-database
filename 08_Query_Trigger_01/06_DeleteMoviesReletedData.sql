delimiter |
create trigger DeleteMovieReletedData BEFORE DELETE ON movies
for each row 
begin 
delete from movies_directors where movie_id = old.id;
delete from movies_genres where movie_id = old.id;
delete from roles where movie_id = old.id;
end;
|