USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_book]    Script Date: 05.04.2025 20:13:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_book]
@id_book int, 
@name_b varchar(50)
as
begin
update Book set book.Name_B=@name_b where Book.ID_Book=@id_book
end
GO

