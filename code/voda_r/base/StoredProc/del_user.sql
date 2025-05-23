USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[del_user]    Script Date: 23.05.2025 22:40:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_user]
@userid int
as
begin
delete from usver where 1=1  and usver.userid=@userid
end
GO

