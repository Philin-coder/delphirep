USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_proekt]    Script Date: 11.06.2025 14:32:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_proekt]
@N_Proekta int
as
begin
  delete from Proect where 1=1 and Proect.N_Proekta=@N_Proekta
end
GO

