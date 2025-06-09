USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_dol]    Script Date: 09.06.2025 22:55:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_dol]
@n_dol int
as
begin
  delete from Dolshnost where 1=1 and Dolshnost.N_Dol=@n_dol
end


GO

