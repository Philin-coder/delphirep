USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_ex_by_exit_desc]    Script Date: 04.07.2025 11:51:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sel_ex_by_exit_desc]
@c_exit_desc nvarchar(255)
as
begin
select 
exempl.ex_inv_id,
exempl.ex_data_pr,
exempl.ex_data_out,
doc.doc_theme,
c_exit.c_exit_desc,
akt_out.akt_s_nom,
exempl.ex_test_data,
case when exempl.ex_test_mark=0 then 'Проверен'  else 'Не проверен' end as test_mark
from exempl 
inner join doc on exempl.doc_id=doc.doc_id
inner join c_exit on exempl.c_exit_id=c_exit.c_exit_id
inner join akt_out on exempl.exit_akt_id=akt_out.exit_akt_id
where 1=1
and c_exit.c_exit_desc=@c_exit_desc
end
GO

