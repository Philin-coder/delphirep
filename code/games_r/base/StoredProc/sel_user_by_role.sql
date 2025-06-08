USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_user_by_role]    Script Date: 08.06.2025 23:12:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_user_by_role]
@usver_role varchar(1000)
as
begin
select 
  usver.usverId,
  usver.usver_role,
  usver.usver_pass
from usver 
where 1=1
and usver.usver_role=@usver_role
end
GO

