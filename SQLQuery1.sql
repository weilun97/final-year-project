CREATE PROC UserViewByID
@userid int
AS 
	SELECT *
	FROM register
	WHERE userid = @userid