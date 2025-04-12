USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[REPORT_1]    Script Date: 12.04.2025 12:16:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[REPORT_1]
@D1 DATE,@D2 DATE
AS 
begin
SELECT Book.Name_B,Author.Name_A,
COUNT(Delivery.ID_Delivery) as books
FROM Delivery,Doc,Book, Author WHERE 
Author.ID_Author=Book.ID_Author AND 
Book.ID_Book=Doc.ID_Book 
AND Doc.ID_Doc=Delivery.ID_Doc
AND Delivery.Date_D BETWEEN @D1 AND @D2 
GROUP BY Book.Name_B,Author.Name_A
ORDER BY COUNT(Delivery.ID_Delivery) DESC
end
GO

