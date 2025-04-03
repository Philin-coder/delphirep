USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_genre]    Script Date: 03.04.2025 17:40:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_genre]
@Name_G varchar(50)
as
begin
select 
Genre.ID_Genre,
Genre.Name_G
 from Genre
 where 1=1
  and  Genre.Name_G=@Name_G
  end
GO

