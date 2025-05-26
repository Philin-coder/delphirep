USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[del_klient]    Script Date: 26.05.2025 16:20:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_klient]
  @klient_id int
  as
  begin
  delete from klient where 1=1 and klient.klient_id=@klient_id
  end
GO

