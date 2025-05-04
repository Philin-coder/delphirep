USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_adm_by_fio]    Script Date: 04.05.2025 12:32:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_adm_by_fio]
@fio_admin varchar(1000)
as
begin
select 
  m_admin.id_admin,
  m_admin.fio_admin,
  case  
  when m_admin.smena=0 then 'Ночная'  
  when m_admin.smena=1 then 'Дневная'	
  when m_admin.smena=2 then 'Вечерняя'	
  else 'Утренняя'
  end as smena
from 
m_admin 
where 1=1
and m_admin.fio_admin=@fio_admin
end
GO

