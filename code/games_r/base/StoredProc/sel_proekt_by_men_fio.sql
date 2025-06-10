USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_proekt_by_men_fio]    Script Date: 10.06.2025 23:01:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_proekt_by_men_fio]
@manager_fio varchar(1000)
as
begin
 select 
Proect.N_Proekta,
Proect.Nam_proect,
Proect.janr,
Proect.data_nash,
manager.fio,
Proect.cost_plan,
Proect.cost_fact,
Proect.dataend,
Proect.dataendplan
 from Proect
 inner join manager on manager.Id_manager=Proect.id_manager
 where 1=1
 and manager.fio=@manager_fio
 end
GO

