USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_task_back]    Script Date: 11.06.2025 19:52:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[upd_task_back]
@N_zad int
as
begin
  update Zadanie set Date_fakt=null where 1=1 and  N_Zad=@N_zad
end
GO

