USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_type_by_opis]    Script Date: 05.05.2025 13:11:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_type_by_opis]
@type_opis  varchar(1000)
as
begin
select 
type_nomer.id_type_nomer,
type_nomer.type_naim,
type_nomer.type_opis,
type_nomer.type_image 
from type_nomer 
where 1=1
and type_nomer.type_opis=@type_opis
end
GO

