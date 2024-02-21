USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[ins_usluga]    Script Date: 15.12.2020 21:00:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[ins_usluga]
@usl_naim varchar(150),
@usl_stoim decimal(10,2),
@usl_ed_izm varchar(150)
as
begin
insert into usluga(usl_naim ,usl_stoim,usl_ed_izm)values(@usl_naim ,@usl_stoim,@usl_ed_izm )
end



GO

