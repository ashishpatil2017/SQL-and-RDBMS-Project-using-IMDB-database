USE [imdb]

GO
CREATE TRIGGER UpdateAverageRankScore2 ON [dbo].[review]
AFTER INSERT 
AS 
BEGIN 
	DECLARE @id int;
	SELECT @id = i.movie_id from inserted i;

	UPDATE [imdb].[dbo].[movies]
	SET [imdb].[dbo].[movies].[rankscore] = h.average_value
    FROM (SELECT avg(review.value('(/Review/rating)[1]', 'float')) AS average_value
	      FROM [imdb].[dbo].[movies] join [imdb].[dbo].[review] ON [imdb].[dbo].[movies].[id] = [imdb].[dbo].[review].[movie_id]   
	WHERE [imdb].[dbo].[movies].[id] = @id) h
	WHERE [imdb].[dbo].[movies].[id] = @id

END


GO