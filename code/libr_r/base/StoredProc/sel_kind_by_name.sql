USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_kind_by_name]    Script Date: 28.06.2025 16:14:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_kind_by_name]
@doc_kind_naim nvarchar(255)
as
begin
select 
 doc_kind.doc_kind_id,
 doc_kind.doc_kind_naim 
from doc_kind 
where 1=1
and  doc_kind.doc_kind_naim=@doc_kind_naim
end
GO

