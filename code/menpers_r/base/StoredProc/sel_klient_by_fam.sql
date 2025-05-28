USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_klient_by_fam]    Script Date: 28.05.2025 23:57:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_klient_by_fam]
 @snmae varchar(1000)
 as
 begin
 select 
 klient.klient_id,
 klient.naim,
 klient.otch,
 klient.snmae,
 klient.b_date, 
 klient.cont,
 klient.phone,
 mplan.nazv,
 usluga.opis,
 klient.email
 from klient
 inner join mplan on mplan.id_plan=klient.id_plan
 inner join usluga on usluga.id_usl=klient.id_usl
 where 1=1 and klient.snmae=@snmae
 end
 
GO

