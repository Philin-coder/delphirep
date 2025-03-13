USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_grup]    Script Date: 13.03.2025 20:01:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_grup]
@naim_grup varchar(1000)
as
begin
select 
gruppa.grup_id,  gruppa.naim_grup, gruppa.kurs,spec.spec_maim
from gruppa
inner join spec on  spec.spec_id=gruppa.spec_id
where 1=1 and gruppa.naim_grup=@naim_grup;
end 
GO

