USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_etap]    Script Date: 07.06.2025 22:31:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_etap] 
@n_etap int
as
begin
  delete from Etap where 1=1 and Etap.N_Etap=@n_etap
end
GO

