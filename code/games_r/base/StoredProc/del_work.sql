USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_work]    Script Date: 08.06.2025 20:35:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_work]
@N_Work int
as
begin
  delete from Work where 1=1 and Work.N_Work=@N_Work
end
GO

