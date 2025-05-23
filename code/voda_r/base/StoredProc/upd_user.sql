USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_user]    Script Date: 23.05.2025 22:14:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_user]
@userid int,
@user_pass varchar(1000)
as
begin
update usver set usver.user_pass=@user_pass where 1=1 and usver.userid=@userid
end
GO

