USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[del_master]    Script Date: 25.05.2025 12:50:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_master]
  @id_master int
  as
  begin
  delete from m_master where 1=1 and m_master.id_master=@id_master
  end
GO

