USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[upd_rab]    Script Date: 01.12.2020 21:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_rab]
@N_rab int,
@date_yv date
as
begin
update Rabotnik set  Date_yv =@date_yv where Rabotnik.N_Rab=@N_rab
end
GO

