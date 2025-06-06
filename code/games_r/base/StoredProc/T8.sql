USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[T8]    Script Date: 01.12.2020 21:52:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[T8]
@DATAN DATE,
@DATAK DATE
AS
BEGIN
SELECT  manager.fio, Proect.cost_plan, COUNT(Proect.dataendplan)  as [нарушения]
FROM  manager
join Proect on Proect.id_manager=manager.Id_manager
WHERE Proect.dataend> Proect.dataendplan AND Proect.dataend BETWEEN @DATAN AND @DATAK
group by manager.fio, Proect.cost_plan
END
GO

