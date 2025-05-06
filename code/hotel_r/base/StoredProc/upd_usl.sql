USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_usl]    Script Date: 07.05.2025 0:12:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_usl]
@usl_id int,
@usl_naim varchar(1000)
as
begin
update usluga set usluga.usl_naim=@usl_naim  where 1=1 and  usluga.usl_id=@usl_id
end
GO

