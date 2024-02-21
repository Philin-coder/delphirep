USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[vip_zadan]    Script Date: 01.12.2020 21:52:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[vip_zadan]
@N_zad int,
@date_fakt date
as
begin
update Zadanie set Date_fakt=@date_fakt where N_Zad=@N_zad
end
GO

