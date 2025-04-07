USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_reader]    Script Date: 07.04.2025 23:54:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_reader]
@Name_R varchar(50)
as
begin
select 
reader.ID_Reader,
Reader.Name_R, 
Reader.Date_B,
Reader.Adres,
Reader.Tel,
Reader.Date_R
from Reader where 1=1
and Reader.Name_R=@Name_R
end
GO

