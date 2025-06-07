USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_etap]    Script Date: 07.06.2025 21:42:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_etap]
@Nam_etap varchar(1000),
@n_etap int
as
begin
  update Etap set Nam_etap=@Nam_etap where 1=1 and Etap.N_Etap=@n_etap
end
GO

