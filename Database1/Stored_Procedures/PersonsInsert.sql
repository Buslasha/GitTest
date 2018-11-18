CREATE PROCEDURE [dbo].[PersonsInsert]
	 @ID int
	,@Surname varchar(50)
	,@Name varchar(50)
	,@Patronymic nvarchar(50) = NULL
	,@DateOfBirth date = NULL
AS
	BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Persons]
	(
	[Persons].[Id],
	[Persons].[Name],
	[Persons].[Surname],
	[Persons].[Patronymic],
	[Persons].[DateofBirth]
	)
	VALUES
	(
	@ID
	,@Surname
	,@Name
	,@Patronymic
	,@DateOfBirth
	);

	END

