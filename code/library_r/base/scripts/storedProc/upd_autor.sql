USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_autor]    Script Date: 03.04.2025 12:36:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_autor]
@ID_Author int ,
@Name_A varchar(50)
as
begin
update Author set Name_A=@Name_A where Author.ID_Author=@ID_Author
end
GO

