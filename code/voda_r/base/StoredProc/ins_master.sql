USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_master]    Script Date: 25.05.2025 10:29:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_master]
 @fio_master varchar(1000),
 @kont_d varchar(1000),
 @dnr datetime,
 @dns datetime,
 @userid int
  as
  begin
  insert into m_master(fio_master,kont_d,dnr,dns,userid)
  values(@fio_master,@kont_d,@dnr,@dns,@userid)
  end
GO

