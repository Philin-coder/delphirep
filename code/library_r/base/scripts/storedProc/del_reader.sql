USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_reader]    Script Date: 08.04.2025 22:15:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_reader]
@ID_Reader int 
as
begin
delete from Reader where ID_Reader=@ID_Reader
end
GO

