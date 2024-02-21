USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[sel_task]    Script Date: 01.12.2020 21:50:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_task]
 @n_rab int
 as
 begin
 select  Zadanie.N_Zad,Zadanie.Sr_vip, Rabotnik.fio, Zadanie.St_rab, Zadanie.Data_nash, Proect.Nam_proect, Work.Nam_work
 from Zadanie
 join Proect on Zadanie.N_Proekta=Proect.N_Proekta
 join Rabotnik on Rabotnik.N_Rab=Zadanie.N_Rab
 join Work on Work.N_Work=Zadanie.N_Work
where Zadanie.Date_fakt is null and Rabotnik.Date_yv is null and Rabotnik.N_Rab=@n_rab 
end
GO

