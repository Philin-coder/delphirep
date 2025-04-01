USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[INS_DOC]    Script Date: 01.04.2025 19:48:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INS_DOC]
@ID_Book int,
@Status int
AS 
begin
INSERT INTO Doc(ID_Book,m_Status) VALUES (@ID_Book,@Status)
end
GO

