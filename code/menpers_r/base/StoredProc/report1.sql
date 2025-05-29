USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 29.05.2025 15:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[report1]
@d1  date,
@d2  date
as
begin
select 
klient.naim,
klient.otch, 
klient.snmae, 
usluga.opis, 
usluga.cost, 
usluga.date_o,
mplan.nazv,
mplan.opis, 
manager.fio 
from klient
join usluga on usluga.id_usl=klient.id_usl
join mplan on klient.id_plan=mplan.id_plan
join manager on manager.maneger_id=mplan.maneger_id
where 1=1 and usluga.date_o is not null and    
usluga.date_o between @d1 and @d2  

end
GO

