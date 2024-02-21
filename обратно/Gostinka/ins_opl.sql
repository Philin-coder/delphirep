USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[ins_opl]    Script Date: 15.12.2020 20:59:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_opl]
@id_usl int,
@date_opl date,
@kol_d int,
@form_opl varchar(150),
@total_s decimal(10,2),
@dogovor_id int
as
begin
insert into oplata(id_usl,date_opl,kol_d,form_opl,total_s,dogovor_id)values(@id_usl,@date_opl,@kol_d,@form_opl,@total_s,@dogovor_id) 
end




GO

