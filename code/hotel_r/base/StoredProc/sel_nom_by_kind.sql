USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_nom_by_kind]    Script Date: 13.05.2025 14:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_nom_by_kind]
@nomer_kind varchar(1000)
as
begin
select 
nomer.nomer_id,
nomer.nomer_kind,
nomer.nomer_cost_day,
type_nomer.type_image,
case 
  when nomer.nomer_st=0 then 'Занят'
  else 'Свободен'
 end as nom_st
from nomer
inner join  type_nomer on type_nomer.id_type_nomer=nomer.id_type_nomer
where 1=1
and nomer.nomer_kind=@nomer_kind
end
GO

