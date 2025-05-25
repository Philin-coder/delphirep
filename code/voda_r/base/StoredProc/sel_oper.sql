USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_oper]    Script Date: 25.05.2025 16:24:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_oper]
  @oper_naim varchar(1000)
  as
  begin
  select 
  operator.oper_id,
  operator.oper_naim,
  usver.user_name,
  operator.smdata 
  from operator 
  inner join usver on usver.userid=operator.userid
  where 1=1 
  and operator.oper_naim=@oper_naim
  end
GO

