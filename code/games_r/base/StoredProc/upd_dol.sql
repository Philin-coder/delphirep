USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_dol]    Script Date: 09.06.2025 22:16:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_dol]
@n_dol int,
@nam_dol varchar(1000)
as
begin
  update  Dolshnost set Nam_dol=@nam_dol where 1=1 and Dolshnost.N_Dol=@n_dol
end

GO

