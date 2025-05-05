USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_type_n]    Script Date: 05.05.2025 20:18:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_type_n] 
@id_type_nomer int,
@type_naim varchar(1000)
as
begin
update type_nomer set type_nomer.type_naim=@type_naim where 1=1 and type_nomer.id_type_nomer=@id_type_nomer
end

GO

