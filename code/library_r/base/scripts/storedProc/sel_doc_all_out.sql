USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_doc_all_out]    Script Date: 06.04.2025 15:11:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_doc_all_out]
as
begin
select Doc.ID_Doc, 
Book.Name_B,
case Doc.m_Status when 0 then 'В наличии' else 'Выдан' end as book_state
from Doc 
inner join Book on Book.ID_Book=Doc.ID_Book
where 1=1
and Doc.m_Status=1
end
GO

