USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[report_1]    Script Date: 17.04.2025 19:35:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[report_1]
as
begin
SELECT 
    m_order.m_order_id,
    m_order.adres,
    m_order.oredr_q,
    m_order.pay_way,
    m_order.get_way,
    CASE 
        WHEN m_order.is_get = 1 THEN 'отправлен' 
        ELSE 'не отправлен' 
    END AS m_get,
    CASE 
        WHEN m_order.is_pay = 1 THEN 'оплачен' 
        ELSE 'не оплачен' 
    END AS m_pay,
    m_order.u_mail,
    good.naim_good,
    m_order.about_order,
    (SELECT SUM(oredr_q) 
     FROM m_order 
     WHERE is_pay = 1) AS total_paid_goods
FROM 
    m_order
INNER JOIN 
    good ON good.id_good = m_order.id_good;
end
GO

