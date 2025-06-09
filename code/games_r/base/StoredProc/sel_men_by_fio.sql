USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_men_by_fio]    Script Date: 09.06.2025 14:36:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_men_by_fio]
@fio varchar(1000)
as 
begin
select 
  manager.Id_manager,
  usver.usver_role,
  manager.fio 
from manager 
inner join usver on usver.usverId=manager.usverId
where 1=1
and manager.fio=@fio
end 
GO

