USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_user_by_login]    Script Date: 23.05.2025 14:34:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_user_by_login]
@user_name varchar(1000)
as
begin
select 
  usver.userid,
  usver.user_name,
  usver.user_pass
from usver
where 1=1
and   usver.user_name=@user_name
end
GO

