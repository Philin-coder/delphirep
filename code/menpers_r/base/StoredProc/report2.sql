USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[report2]    Script Date: 29.05.2025 18:30:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[report2]
@d1 date
as
begin
select klient.naim,klient.otch, klient.snmae, usluga.opis, usluga.cost, 
usluga.date_o,mplan.nazv,mplan.opis, manager.fio 
from klient
JOIN usluga ON usluga.id_usl = klient.id_usl
    JOIN mplan ON klient.id_plan = mplan.id_plan
    JOIN manager ON manager.maneger_id = mplan.maneger_id
    WHERE usluga.date_o IS NOT NULL
     aND CONVERT(DATE, usluga.date_o)=@d1


end
GO

