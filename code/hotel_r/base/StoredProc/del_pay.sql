USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_pay]    Script Date: 11.05.2025 18:48:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_pay]
@pay_id int
as
begin
delete from pay where 1=1 and pay.pay_id=@pay_id
end
GO

