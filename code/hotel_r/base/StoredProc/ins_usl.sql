USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_usl]    Script Date: 06.05.2025 10:58:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_usl]
@usl_cost decimal(10,2),
@usl_naim varchar(1000),
@usl_ed_ism varchar(1000)
as
begin
insert into usluga(usl_cost,usl_naim,usl_ed_ism)values(@usl_cost,@usl_naim,@usl_ed_ism) 
end
GO

