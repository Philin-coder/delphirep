USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_type]    Script Date: 24.05.2025 18:28:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_type] 
  @type_id int,
  @typr_opis varchar(1000)
  as
  begin
  update type_s set typr_opis=@typr_opis where 1=1 and type_s.type_id=@type_id
  end
GO

