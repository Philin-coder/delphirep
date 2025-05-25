USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_oper]    Script Date: 25.05.2025 18:15:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_oper]
  @oper_id int,
  @smdata date
  as
  begin
  update operator set smdata=@smdata where 1=1 and operator.oper_id=@oper_id
  end

  
GO

