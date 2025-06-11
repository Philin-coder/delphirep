USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_task]    Script Date: 11.06.2025 20:13:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_task]
@N_zad int
as
begin
  delete from Zadanie where 1=1 and Zadanie.N_Zad=@N_zad
end


GO

