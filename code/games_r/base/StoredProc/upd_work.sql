USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_work]    Script Date: 08.06.2025 18:44:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_work]
@T_days date,
@N_Work int
as
begin
  update Work set T_days=@T_days where 1=1 and Work.N_Work=@N_Work
end
GO

