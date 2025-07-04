USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 04.07.2025 17:19:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[report1]
@d1 date,
@d2 date
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
and exempl.ex_test_data between @d1 and @d2
end
GO

