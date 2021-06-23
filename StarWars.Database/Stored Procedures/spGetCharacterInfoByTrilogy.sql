﻿CREATE PROCEDURE [dbo].[spGetCharacterInfoByTrilogy]
	@Trilogy varchar(50)
AS
	SELECT char.Id as CharacterId,
	char.Name,
	char.Allegiance,
	char.IsJedi,
	tri.TrilogyName	
	FROM dbo.CharacterGeneralInfo char
	INNER JOIN dbo.TrilogyInfo tri ON char.IntroducedInTrilogy_Id = tri.Id
	WHERE tri.TrilogyName = @Trilogy