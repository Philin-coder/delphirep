USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_plan_by_nazv]    Script Date: 28.05.2025 18:34:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_plan_by_nazv]
  @nazv varchar(1000)
as
begin
select 
  mplan.id_plan,
  mplan.nazv,
  mplan.date_n,
  mplan.opis,
  manager.fio 
from mplan 
inner join manager on manager.maneger_id=mplan.maneger_id
where 1=1
and mplan.nazv=@nazv
end
GO

