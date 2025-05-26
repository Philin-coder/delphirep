USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_klient]    Script Date: 26.05.2025 11:19:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_klient]
  @fio varchar(1000)
  as
  begin
  select 
   klient.klient_id,
   klient.fio,
   klient.adr,
   klient.prim,
   klient.kont_d,
   klient.tel,
   klient.pokaz,
   operator.oper_naim,
   schet.Nomer,
   m_master.fio_master
  from klient 
  inner join operator on operator.oper_id=klient.oper_id
  inner join schet on schet.schet_id=klient.schet_id
  inner join m_master on m_master.id_master=klient.id_master
  where 1=1
  and klient.fio=@fio
  end
GO

