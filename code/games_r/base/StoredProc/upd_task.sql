USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_task]    Script Date: 11.06.2025 19:08:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[upd_task]
@N_zad int,
@date_fakt date
as
begin
  update Zadanie set Date_fakt=@date_fakt where 1=1 and  N_Zad=@N_zad
end
GO

