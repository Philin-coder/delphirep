USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_nom]    Script Date: 07.05.2025 14:09:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_nom] 
@nomer_id int,
@nomer_kind varchar(1000) 
as
begin
update nomer set nomer_kind=@nomer_kind where 1=1 and nomer.nomer_id=@nomer_id
end
GO

