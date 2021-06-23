CREATE PROCEDURE [dbo].[spGetCharacterInfoByName]
	@Name varchar(100)
AS
	SELECT char.Id as CharacterId,
	char.Name,
	char.Allegiance,
	char.IsJedi,
	tri.TrilogyName	
	FROM dbo.CharacterGeneralInfo char
	INNER JOIN dbo.TrilogyInfo tri ON char.IntroducedInTrilogy_Id = tri.Id
	WHERE char.Name = @Name
