USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_worker_by_fio]    Script Date: 10.06.2025 10:49:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[sel_worker_by_fio]
@Fio varchar(1000) 
as
begin
  select 
 Rabotnik.N_Rab,
 Rabotnik.Fio, 
 Dolshnost.Nam_dol,
 Rabotnik.Iphone,
  case when Rabotnik.St_rab= 1 then 'Свободен' else 'Занят' end as free,
 Rabotnik.Date_pr,
usver.usver_role
from Rabotnik 
inner join Dolshnost on Dolshnost.N_Dol=Rabotnik.N_Dol
inner join usver on usver.usverId=Rabotnik.usverId
where 1=1
and Rabotnik.Fio=@FIO
end
GO

