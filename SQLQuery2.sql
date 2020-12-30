CREATE PROC UserAddOrEdit
@userid int,
@fname varchar(50),
@lname varchar(50),
@mname varchar(50),
@email varchar(50),
@username varchar(50),
@password varchar(50)
AS
	if @userid = 0
		BEGIN
			INSERT INTO [dbo].[register] (fname, lname, mname, email, username, password)
			VALUES (@fname, @lname, @mname, @email, @username, @password)
			END
			ELSE
			BEGIN
				UPDATE [dbo].[register]
				SET
					fname = @fname,
					lname = @lname,
					mname = @mname,
					email = @email,
					username = @username,
					password = @password
				WHERE userid = @userid
			END