CREATE PROCEDURE [dbo].[spAddCharacter]
	@Name varchar(100),
	@Allegiance varchar(50),
	@IsJedi bit,
	@IntroducedInTrilogy_Id int
AS
	INSERT INTO dbo.CharacterGeneralInfo
	(Name, Allegiance, IsJedi, IntroducedInTrilogy_Id)
	VALUES
	(@Name, @Allegiance, @IsJedi, @IntroducedInTrilogy_Id)
