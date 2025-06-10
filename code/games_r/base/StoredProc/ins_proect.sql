USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_proect]    Script Date: 10.06.2025 23:52:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_proect]
@Nam_proect varchar(200),
@janr  varchar(50),
@data_nash date,
@id_manager int,
@cost_plan decimal(10,2), 
@cost_fact decimal(10,2),
@dataendplan date
as
begin
insert into Proect ( Nam_proect,janr,data_nash,id_manager,cost_plan, cost_fact,dataendplan ) 
values(@Nam_proect,@janr,@data_nash,@id_manager,@cost_plan,@cost_fact, @dataendplan)
end
GO

