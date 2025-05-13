USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_nom]    Script Date: 13.05.2025 15:26:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_nom]
@nomer_kind varchar(1000),
@nomer_cost_day decimal(10,2),
@id_type_nomer int,
@nomer_st int
as
begin
insert into nomer(nomer_kind,nomer_cost_day,id_type_nomer, nomer_st)
values(@nomer_kind,@nomer_cost_day,@id_type_nomer,@nomer_st)
end

GO

