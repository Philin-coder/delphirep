USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[t6]    Script Date: 01.12.2020 21:50:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[t6]
@datAn date,
@St_rab char(50)
as 
begin
select Rabotnik.fio, Dolshnost.Nam_dol,Rabotnik.Date_pr, Rabotnik.Date_yv, Rabotnik.Iphone, Work.Nam_work, Proect.Nam_proect, Proect.dataendplan
from Rabotnik
join Dolshnost on Rabotnik.N_Dol=Dolshnost.N_Dol
join Zadanie on Rabotnik.N_Rab=Zadanie.N_Rab
join Work on Work.N_Work=Zadanie.N_Work
join Proect on Zadanie.N_Proekta=Proect.N_Proekta
where Proect.data_nash=@datan and Rabotnik.St_rab=@St_rab
end
GO

