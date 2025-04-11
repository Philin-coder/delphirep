USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_attachment_description]    Script Date: 11.04.2025 20:06:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_attachment_description]
@id_attachment int, 
@attachment_description varchar(50)
as
begin
update attachment set attachment_description=@attachment_description where attachment.id_attachment=@id_attachment
end
GO

