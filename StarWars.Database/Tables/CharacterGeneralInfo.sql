CREATE TABLE [dbo].[CharacterGeneralInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NULL, 
    [Allegiance] VARCHAR(50) NULL, 
    [IsJedi] BIT NULL, 
    [IntroducedInTrilogy_Id] INT NULL
)
