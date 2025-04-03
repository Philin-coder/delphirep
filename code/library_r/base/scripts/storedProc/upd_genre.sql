USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_genre]    Script Date: 03.04.2025 17:59:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_genre] 
@ID_Genre int,
@Name_G varchar(50)
as
begin
update Genre set genre.Name_G=@Name_G where Genre.ID_Genre=@ID_Genre
end
GO

