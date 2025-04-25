USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_work_by_name]    Script Date: 25.04.2025 11:23:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_work_by_name]
@work_naim varchar(1000)
as
begin
select 
m_work.id_work,
m_work.work_naim,
m_work.work_opis,
m_work.work_data,
m_work.work_mark_and_about,
m_user.fio
from m_work 
inner join m_user 
  on m_user.id_user=m_work.id_user
where 1=1
and m_work.work_naim=@work_naim
end
GO

