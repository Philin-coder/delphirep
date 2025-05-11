USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_pay]    Script Date: 11.05.2025 12:27:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_pay]
  @usl_id int,
  @pay_data date,
  @mdays int ,
  @pay_from varchar(1000),
  @total_s float,
  @dog_id int
  as
  begin
  insert into pay(usl_id,pay_data,mdays,pay_from,total_s,dog_id)
  values(@usl_id,@pay_data,@mdays,@pay_from,@total_s,@dog_id)
  end
GO

