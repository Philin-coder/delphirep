USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[get_attachment]    Script Date: 01.04.2025 19:42:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[get_attachment]
@id_attachment int
as
begin
select 
attachment.id_attachment,
attachment.file_name_attachment,
attachment.attachment,
attachment.attachment_description,
Book.Name_B
from 
 attachment
 inner join Doc on attachment.ID_Doc=Doc.ID_Doc
 inner join  Book  on Doc.ID_Book= Book.ID_Book
 where 1=1 and  attachment.id_attachment=@id_attachment
end

GO

