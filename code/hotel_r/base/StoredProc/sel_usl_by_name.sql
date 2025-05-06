USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_usl_by_name]    Script Date: 06.05.2025 12:06:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_usl_by_name]
@usl_naim varchar(1000)
as
begin
select 
usluga.usl_id,
usluga.usl_cost,
usluga.usl_naim,
usluga.usl_ed_ism 
from usluga
where 1=1 and usluga.usl_naim=@usl_naim
end
GO

