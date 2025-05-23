USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_user]    Script Date: 23.05.2025 14:59:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_user] 
@user_name varchar(1000),
@user_pass varchar(1000)
as
begin
insert into usver(user_name,user_pass)values(@user_name ,@user_pass)
end

GO

