USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_good]    Script Date: 16.04.2025 12:32:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_good]
@naim_good varchar(50)
as
begin
select 
good.id_good,
good.naim_good,
good.quant_good,
good.cost_good
from good
where 1=1 
and good.naim_good=@naim_good
end
GO

