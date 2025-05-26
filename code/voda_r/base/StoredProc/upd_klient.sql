USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_klient]    Script Date: 26.05.2025 16:07:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_klient] 
   @klient_id int,
   @kont_d varchar(1000)
  as
  begin
  update klient set kont_d=@kont_d where 1=1 and klient.klient_id=@klient_id
  end
GO

