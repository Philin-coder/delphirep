USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_m_order]    Script Date: 17.04.2025 16:34:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_m_order]
@m_order_id int,
@adres varchar(1000)
as
begin
update m_order set m_order.adres=@adres where 1=1 and m_order.m_order_id=@m_order_id
end

GO

