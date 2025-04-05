USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_book]    Script Date: 05.04.2025 22:00:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_book]
@id_book int
as
begin
delete from Book where Book.ID_Book=@id_book
end
GO

