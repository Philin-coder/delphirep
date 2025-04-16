USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_good]    Script Date: 16.04.2025 12:25:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_good]
@naim_good varchar(50),
@quant_good int,
@cost_good money
as
begin
insert into good(naim_good,quant_good,cost_good)values(@naim_good,@quant_good,@cost_good)
end
GO

