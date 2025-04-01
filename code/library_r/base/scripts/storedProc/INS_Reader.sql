USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[INS_Reader]    Script Date: 01.04.2025 19:50:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INS_Reader]

@Name_R varchar(50),
@Date_B Date,
@Adres varchar(70),
@Tel varchar(15),
@Date_R date
AS 
begin
INSERT INTO Reader(Name_R,Date_B,Adres,Tel,Date_R) VALUES (@Name_R,@Date_B,@Adres,@Tel,@Date_R)
end
GO

