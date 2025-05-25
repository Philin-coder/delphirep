USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_master]    Script Date: 25.05.2025 12:27:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_master]
  @id_master int, 
  @kont_d varchar(1000)
  as
  begin
  update m_master set kont_d=@kont_d where 1=1 and m_master.id_master=@id_master
  end

GO

