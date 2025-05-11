USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_pay]    Script Date: 11.05.2025 18:18:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_pay]
@pay_id int,
@pay_from varchar(1000)
as
begin
update pay set pay.pay_from =@pay_from where 1=1 and pay.pay_id=@pay_id
end
GO

