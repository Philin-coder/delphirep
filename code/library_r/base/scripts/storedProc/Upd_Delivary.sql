USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[Upd_Delivary]    Script Date: 01.04.2025 20:09:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Upd_Delivary]
@Date_Return_Fact 
date,@ID_Delivery int
AS 
begin
UPDATE Delivery SET Date_Return_Fact=@Date_Return_Fact WHERE ID_Delivery=@ID_Delivery
end
GO

