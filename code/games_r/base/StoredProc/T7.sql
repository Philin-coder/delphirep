USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[T7]    Script Date: 01.12.2020 21:52:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC [dbo].[T7]
@daten date,
@DATAK DATE
AS
BEGIN
SELECT Rabotnik.Fio,Dolshnost.Nam_dol, Proect.cost_plan, COUNT(Proect.dataendplan)  as [нарушение]
FROM  Rabotnik
JOIN Dolshnost ON Rabotnik.N_DoL=Dolshnost.N_Dol
JOIN Zadanie ON Rabotnik.N_Rab=Zadanie.N_Rab
JOIN Proect ON  Zadanie.N_Proekta=Proect.N_Proekta
JOIN Work ON  Zadanie.N_Work=Work.N_Work
WHERE Proect.dataend> Proect.dataendplan AND Proect.dataend between @daten and @DATAK
group by Rabotnik.Fio,Dolshnost.Nam_dol, Proect.cost_plan
END
GO

