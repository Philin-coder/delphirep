USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_genre]    Script Date: 03.04.2025 18:02:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_genre] 
@ID_Genre int
as
begin
delete from Genre where Genre.ID_Genre=@ID_Genre
end
GO

