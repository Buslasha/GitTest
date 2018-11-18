CREATE PROCEDURE [dbo].[PersonsUpdate]
	 @ID int
	,@Surname varchar(50)
	,@Name varchar(50)
	,@Patronymic nvarchar(50)
	,@DateOfBirth date 
AS
	BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[Persons]
	SET
	[Persons].[Id] = @ID,
	[Persons].[Name] = @Surname,
	[Persons].[Surname] = @Name,
	[Persons].[Patronymic] = @Patronymic,
	[Persons].[DateofBirth] = @DateOfBirth
	WHERE [Persons].[Id] = @ID
	;

	END