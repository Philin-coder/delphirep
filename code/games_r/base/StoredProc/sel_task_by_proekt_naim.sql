USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_task_by_proekt_naim]    Script Date: 11.06.2025 16:25:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_task_by_proekt_naim]
@Nam_proect varchar(1000)
as
begin
select 
Zadanie.N_Zad, 
Zadanie.Sr_vip,
Rabotnik.Fio,
case when  Zadanie.St_rab=1 then 'Готово' else 'Не готово' end as work_st ,
Zadanie.Data_nash,
Proect.Nam_proect,
Work.Nam_work
from Zadanie 
inner join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab
inner join Proect on Proect.N_Proekta=Zadanie.N_Proekta
inner join Work on Work.N_Work=Zadanie.N_Work
where 1=1
and Zadanie.Date_fakt is null
and Proect.Nam_proect=@Nam_proect
end
GO

