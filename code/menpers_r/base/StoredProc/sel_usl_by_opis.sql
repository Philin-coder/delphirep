USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_usl_by_opis]    Script Date: 28.05.2025 12:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_usl_by_opis]
@opis varchar(150)
as
begin
select 
usluga.id_usl,
usluga.opis,
usluga.date_o,
usluga.cost
from usluga 
where 1=1 
and usluga.date_o is  null
and usluga.opis=@opis
end
GO

