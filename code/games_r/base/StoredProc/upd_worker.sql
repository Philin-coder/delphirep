USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_worker]    Script Date: 10.06.2025 18:58:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_worker]
@N_Rab int,
@Date_yv date
as
begin
  update Rabotnik set Date_yv=@Date_yv where 1=1 and Rabotnik.N_Rab=@N_Rab
end
GO

