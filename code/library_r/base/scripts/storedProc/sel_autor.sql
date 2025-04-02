USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_autor]    Script Date: 02.04.2025 16:09:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_autor]
@ID_Author int
as
begin
select 
Author.ID_Author,
Author.Name_A
from Author
where 1=1
and Author.ID_Author=@ID_Author
end
GO

