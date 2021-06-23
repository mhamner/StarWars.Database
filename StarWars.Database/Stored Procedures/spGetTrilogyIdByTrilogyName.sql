CREATE PROCEDURE [dbo].[spGetTrilogyIdByTrilogyName]
	@Trilogy varchar(50)
AS
	SELECT tri.Id AS TrilogyId
	FROM dbo.TrilogyInfo tri
	WHERE tri.TrilogyName = @Trilogy
