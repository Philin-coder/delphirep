USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_schet]    Script Date: 25.05.2025 21:03:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_schet]
  @Nomer varchar(1000)
  as
  begin
  select  
  schet.schet_id,
  schet.d_ust,
  schet.vrem_p,
  schet.vrem_sp,
  schet.Nomer,
  type_s.typr_opis
  from schet
  inner join type_s on type_s.type_id=schet.type_id
  where 1=1
  and schet.Nomer=@Nomer
  end
GO

