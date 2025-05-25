USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_master_by_fio]    Script Date: 25.05.2025 10:21:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_master_by_fio]
  @fio_master varchar(1000)
  as
  begin
  select
  m_master.id_master, 
  m_master.fio_master,
  m_master.kont_d,
  m_master.dnr,
  m_master.dns,
  usver.user_name
  from m_master 
  inner join usver on usver.userid=m_master.userid 
  where 1=1
  and m_master.fio_master=@fio_master
  end
GO

