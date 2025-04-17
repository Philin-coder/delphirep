USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[del_m_order]    Script Date: 17.04.2025 17:14:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_m_order]
@m_order_id int
as
begin
delete from m_order where 1=1 and m_order.m_order_id=@m_order_id
end


GO

