USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[del_type]    Script Date: 24.05.2025 19:00:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_type]
  @type_id int
  as
  begin
  delete from type_s where 1=1 and type_s.type_id=@type_id 
  end
GO

