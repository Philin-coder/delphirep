USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[del_delivery]    Script Date: 10.04.2025 15:06:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_delivery]
@ID_Delivery int 
as
begin
delete from Delivery where Delivery.ID_Delivery=@ID_Delivery
end
GO

