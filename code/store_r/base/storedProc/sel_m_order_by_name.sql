USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_m_order_by_name]    Script Date: 16.04.2025 22:56:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_m_order_by_name]
@naim_good varchar(1000)
as
begin
select 
m_order.m_order_id,
m_order.adres,
m_order.oredr_q,
m_order.pay_way,
m_order.get_way,
CASE m_order.is_get when 1 then  'отправлен' else 'не отправлен'end as m_get,
case m_order.is_pay when 1 then 'оплаачен' else 'не оплачен' end as m_pay,
m_order.u_mail,
good.naim_good,
m_order.about_order
from 
m_order
inner join good on good.id_good=m_order.id_good
where 1=1 
and  good.naim_good=@naim_good
end
GO

