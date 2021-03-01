--In this query , we are searching the field of xml in the review table .
--Here we are basically searching those queries which has rating above 7 and showing it the user for a spacific movie

SELECT [imdb].[dbo].[movies].name, review.value('(/Review/name)[1]', 'varchar(20)') AS Name,
	   review.value('(/Review/comment)[1]', 'varchar(50)') AS Comment,
	   review.value('(/Review/rating)[1]', 'float') AS Rating
FROM  [imdb].[dbo].[movies] JOIN [imdb].[dbo].[review] ON [imdb].[dbo].[movies].[id] = [imdb].[dbo].[review].[movie_id]   
WHERE [imdb].[dbo].[movies].[name] = 'Titanic' AND review.value('(/Review/rating)[1]', 'float') > 7 


