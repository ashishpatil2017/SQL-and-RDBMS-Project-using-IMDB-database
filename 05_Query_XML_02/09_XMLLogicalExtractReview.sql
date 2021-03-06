
--Review is a xml data type field and in xml field we have name,comment and rating as three entities 
--With the below query we are trying to extract data from the fields of xml logically and also we are 
--combing this with name of the movie
--Example : When you enter the name of the movie , this query will give you all the poeple you commented on this movie 
--from xml format to logical table format

SELECT [imdb].[dbo].[movies].name, review.value('(/Review/name)[1]', 'varchar(20)') AS Name,
	   review.value('(/Review/comment)[1]', 'varchar(50)') AS Comment,
	   review.value('(/Review/rating)[1]', 'float') AS Rating
FROM   [imdb].[dbo].[movies] join [imdb].[dbo].[review] ON [imdb].[dbo].[movies].[id] = [imdb].[dbo].[review].[movie_id]   
where  [imdb].[dbo].[movies].[name] = 'Titanic'


