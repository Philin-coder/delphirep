USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_grupp]    Script Date: 14.03.2025 10:28:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_grupp]
@naim_grup varchar (1000),
@kurs int,
@spec_id int
as
begin
insert into gruppa(naim_grup,kurs,spec_id)values(@naim_grup ,@kurs,@spec_id)
end
GO

