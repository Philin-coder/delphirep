USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_man_by_fio]    Script Date: 27.05.2025 19:45:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_man_by_fio]
@fio varchar(1000)
as
begin
select 
manager.maneger_id,
manager.fio,
manager.cont,
manager.email,
manager.phone,
 usver_r.usver_name
from manager 
inner join usver_r on usver_r.user_id=manager.user_id
where 1=1
and manager.fio=@fio
end
GO

