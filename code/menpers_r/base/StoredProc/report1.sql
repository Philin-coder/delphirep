USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 08.11.2020 12:51:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[report1]
@dnp  date,
@dkp  date
as
begin
select klient.naim,klient.otch, klient.snmae, usluga.opis, usluga.cost, usluga.date_o,mplan.nazv,mplan.opis, manager.fio 
from klient
join usluga on usluga.klient_id=klient.klient_id
join mplan on klient.klient_id=mplan.klient_id
join manager on manager.maneger_id=mplan.maneger_id
where    usluga.date_o between @dnp and @dkp  and usluga.date_o is not null
end
GO

