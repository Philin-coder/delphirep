USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_autor_by_name]    Script Date: 02.04.2025 16:46:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_autor_by_name]
@Name_A varchar(50)
as
begin
select 
Author.ID_Author,
Author.Name_A
from Author
where 1=1
and Author.Name_A=@Name_A
end
GO

