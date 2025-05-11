USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_pay_by_form]    Script Date: 11.05.2025 12:26:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_pay_by_form]
@pay_from varchar(1000)
as
begin
select 
  pay.pay_id,
  usluga.usl_naim,
  pay.pay_data,
  pay.mdays,
  pay.pay_from,
  pay.total_s,
  dogovor.guest_fio
from pay
inner join usluga on usluga.usl_id=pay.usl_id
inner join dogovor on dogovor.dog_id=pay.dog_id
where 1=1 
and pay.pay_from=@pay_from
end
GO

