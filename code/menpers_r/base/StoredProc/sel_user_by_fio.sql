USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_user_by_fio]    Script Date: 27.05.2025 16:15:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_user_by_fio]
@usver_name varchar(1000)
as
begin
select 
usver_r.user_id,
 usver_r.user_pas,
 usver_r.usver_name
from usver_r 
where 1=1
and usver_r.usver_name=@usver_name
end
GO

