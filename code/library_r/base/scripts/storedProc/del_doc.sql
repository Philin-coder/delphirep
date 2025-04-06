USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_doc]    Script Date: 06.04.2025 23:24:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_doc]
@id_doc int
as
begin
delete from Doc where Doc.ID_Doc=@id_doc
end
GO

