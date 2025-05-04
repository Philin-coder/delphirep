USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_type_by_opis]    Script Date: 04.05.2025 21:58:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_type_by_opis]
@type_opis  varchar(1000)
as
begin
select 
type_nomer.id_type_nomer,
type_nomer.type_naim,
type_nomer.type_opis 
from type_nomer 
where 1=1
and type_nomer.type_opis=@type_opis
end
GO

