USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_worker]    Script Date: 10.06.2025 20:16:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_worker]
@N_Rab int
as
begin
  delete from Rabotnik where 1=1 and Rabotnik.N_Rab=@N_Rab;
end
GO

