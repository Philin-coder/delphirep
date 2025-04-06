USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_autor]    Script Date: 06.04.2025 16:48:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_autor]
@ID_Author int 
as 
begin
delete from Author where 1=1 and Author.ID_Author=@ID_Author
end
GO

