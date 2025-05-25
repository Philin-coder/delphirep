USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_schet]    Script Date: 25.05.2025 22:21:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_schet]
  @d_ust date,
  @vrem_p date,
  @vrem_sp date,
  @Nomer varchar(1000),
  @type_id int
  as
  begin
  insert into schet (d_ust,vrem_p ,vrem_sp,Nomer,type_id)
  values(@d_ust,@vrem_p,@vrem_sp,@Nomer,@type_id)
  end
 
 
GO

