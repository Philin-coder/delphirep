USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_reader]    Script Date: 08.04.2025 20:29:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_reader]
@tel varchar(50),
@id_reader int 
as
begin
update Reader set tel=@tel where 1=1 and Reader.ID_Reader=@id_reader
end
GO

