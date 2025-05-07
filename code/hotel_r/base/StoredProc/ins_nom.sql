USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_nom]    Script Date: 07.05.2025 11:24:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_nom]
@nomer_kind varchar(1000),
@nomer_cost_day decimal(10,2),
@id_type_nomer int
as
begin
insert into nomer(nomer_kind,nomer_cost_day,id_type_nomer)
values(@nomer_kind,@nomer_cost_day,@id_type_nomer)
end

GO

