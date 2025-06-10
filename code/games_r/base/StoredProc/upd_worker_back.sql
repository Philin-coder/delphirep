USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_worker_back]    Script Date: 10.06.2025 19:56:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_worker_back]
@N_Rab int
as
begin
  update Rabotnik set Date_yv  = null where 1=1 and Rabotnik.N_Rab=@N_Rab and Rabotnik.Date_yv is not null
end
GO

