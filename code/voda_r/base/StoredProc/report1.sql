USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 26.05.2025 16:56:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[report1]
  @d1 date,
  @d2 date
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
  and schet.d_ust between @d1 and @d2
  end
  
GO

