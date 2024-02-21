USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[report2]    Script Date: 01.12.2020 21:50:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  proc [dbo].[report2]
@N_proekta int,
@dataendp date
as
begin
select Rabotnik.fio,Dolshnost.Nam_dol,Rabotnik.Iphone, Work.Nam_work,Proect.cost_fact, Proect.data_nash, Proect.dataendplan, Proect.dataend
from Rabotnik
join Dolshnost on Rabotnik.N_Dol=Dolshnost.N_Dol
join manager on Dolshnost.Id_manager=manager.Id_manager
join Zadanie on Rabotnik.N_Rab=Zadanie.N_Rab
join Work on Zadanie.N_Work=Work.N_Work
join Proect on Zadanie.N_Proekta=Proect.N_Proekta
where Proect.dataendplan=@dataendp  and Proect.N_Proekta=@N_proekta
end
GO

