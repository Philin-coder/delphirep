USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_oper]    Script Date: 25.05.2025 16:48:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_oper]
  @oper_naim varchar(1000),
  @userid int,
  @smdata date
  as
  begin
  insert into operator(oper_naim ,userid,smdata)values(@oper_naim ,@userid,@smdata)
  end
  
GO

