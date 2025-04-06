USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_doc_in]    Script Date: 06.04.2025 12:54:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_doc_in]
@name_b varchar (50)
as
begin
select Doc.ID_Doc, 
Book.Name_B,
case Doc.m_Status when 0 then 'В наличии' else 'Выдан' end as book_state
from Doc 
inner join Book on Book.ID_Book=Doc.ID_Book
where 1=1
and book.Name_B=@name_b and Doc.m_Status=0
end
GO

