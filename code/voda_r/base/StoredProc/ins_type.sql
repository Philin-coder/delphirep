USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_type]    Script Date: 24.05.2025 18:00:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_type]
  @typr_opis varchar(1000),
  @mechan varchar(1000),
  @tochn varchar(1000)
  as
  begin
  insert into type_s(typr_opis,mechan,tochn)values(@typr_opis,@mechan,@tochn)
  end
GO

