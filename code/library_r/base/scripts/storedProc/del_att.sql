USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_att]    Script Date: 11.04.2025 21:46:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_att]
@id_attachment int
as
begin
delete from attachment where attachment.id_attachment=@id_attachment
end
GO

