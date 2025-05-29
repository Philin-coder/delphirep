USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 29.05.2025 17:20:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[report1]
    @d1 DATE,
    @d2 DATE
AS
BEGIN
    SELECT 
        klient.naim,
        klient.otch, 
        klient.snmae, 
        usluga.opis, 
        usluga.cost, 
        usluga.date_o,
        mplan.nazv,
        mplan.opis AS m_plan, 
        manager.fio 
    FROM klient
    JOIN usluga ON usluga.id_usl = klient.id_usl
    JOIN mplan ON klient.id_plan = mplan.id_plan
    JOIN manager ON manager.maneger_id = mplan.maneger_id
    WHERE usluga.date_o IS NOT NULL
      AND CONVERT(DATE, usluga.date_o) BETWEEN CONVERT(DATE, @d1) AND CONVERT(DATE, @d2)
END
GO

