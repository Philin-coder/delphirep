USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[INS_Delivary]    Script Date: 01.04.2025 19:55:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INS_Delivary]
@ID_Doc int,
@ID_Reader int, 
@Date_D date,
@Date_Return_Plan date

AS
begin
 INSERT INTO Delivery(ID_Doc,ID_Reader,Date_D,Date_Return_Plan) VALUES (@ID_Doc,@ID_Reader,@Date_D,@Date_Return_Plan)
 end
GO

