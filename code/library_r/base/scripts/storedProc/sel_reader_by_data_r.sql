USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_reader_by_data_r]    Script Date: 08.04.2025 14:48:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc  [dbo].[sel_reader_by_data_r]
@check_date date
as
begin
Set @check_date=ISNULL(@check_date,GETDATE())
select 
reader.ID_Reader,
Reader.Name_R, 
Reader.Date_B,
Reader.Adres,
Reader.Tel,
Reader.Date_R
from Reader where 1=1
and DATEADD(YEAR,5,Date_R)<=@check_date
end
GO

