USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[del_shcet]    Script Date: 26.05.2025 10:07:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_shcet]
 @schet_id int
 as
 begin
 delete from schet where 1=1 and schet.schet_id=@schet_id
 end
GO

