USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[ins_adm]    Script Date: 15.12.2020 20:58:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_adm]
@admin_fio  varchar(150),
@admin_smena varchar(150)
as
begin
insert into adm(admin_fio,admin_smena)values(@admin_fio ,@admin_smena)
end
GO

