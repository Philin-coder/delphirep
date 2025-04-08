USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_reader_by_age]    Script Date: 08.04.2025 13:38:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_reader_by_age]
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
and   DATEDIFF(YEAR, Date_b, @check_date) < 18  
        OR 
        (
            DATEDIFF(YEAR, Date_b, @check_date) = 18  
            AND 
            (
                MONTH(@check_date) < MONTH(Date_B) 
                OR 
                (MONTH(@check_date) = MONTH(Date_B) AND DAY(@check_date) < DAY(Date_B))
            )
        )
end
GO

