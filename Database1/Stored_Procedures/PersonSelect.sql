CREATE PROCEDURE [dbo].[PersonSelect]
	@ID int
AS
BEGIN
	SELECT [Persons].[Id],
	[Persons].[Name],
	[Persons].[Surname],
	[Persons].[Patronymic],
	[Persons].[DateofBirth]
	FROM [dbo].[Persons]
	WHERE [Persons].[Id] = @ID;
END
