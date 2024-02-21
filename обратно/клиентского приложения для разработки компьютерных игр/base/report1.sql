USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 01.12.2020 21:49:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[report1]
@dnp date
as
begin
select Proect.Nam_proect, Proect.janr, manager.fio, Proect.data_nash,Proect.dataend,Proect.dataendplan, Proect.cost_plan, Proect.cost_fact
from Proect 
join manager on manager.id_manager=Proect.id_manager
where Proect.dataendplan=@dnp
end
GO

