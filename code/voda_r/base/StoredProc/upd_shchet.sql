USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_shchet]    Script Date: 25.05.2025 23:54:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_shchet] 
 @schet_id int,
 @vrem_sp date
 as
 begin
 update schet set vrem_sp=@vrem_sp where 1=1 and schet.schet_id=@schet_id
 end
 
GO

