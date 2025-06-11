USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_proekt]    Script Date: 11.06.2025 13:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_proekt]
@N_Proekta int,
@dataend date
as
begin
  update Proect set dataend=@dataend where 1=1 and Proect.N_Proekta=@N_Proekta
end
GO

