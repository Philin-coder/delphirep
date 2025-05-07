USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_nom_by_kind]    Script Date: 07.05.2025 9:54:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_nom_by_kind]
@nomer_kind varchar(1000)
as
begin
select 
nomer.id_type_nomer,
nomer.nomer_kind,
nomer.nomer_cost_day,
type_nomer.type_image
from nomer
inner join  type_nomer on type_nomer.id_type_nomer=nomer.id_type_nomer
where 1=1
and nomer.nomer_kind=@nomer_kind
end
GO

