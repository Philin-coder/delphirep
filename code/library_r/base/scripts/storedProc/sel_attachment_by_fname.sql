USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_attachment_by_fname]    Script Date: 10.04.2025 19:49:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_attachment_by_fname]
@m_fname varchar(100)
as
begin
select 
attachment.id_attachment,
attachment.file_name_attachment,
attachment.attachment,
attachment.attachment_description,
Book.Name_B
from attachment 
inner join Doc on attachment.ID_Doc=Doc.ID_Doc
inner join Book on Doc.ID_Book=Book.ID_Book
where 1=1
and attachment.file_name_attachment=@m_fname
end
GO

