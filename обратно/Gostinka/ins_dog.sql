USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[ins_dog]    Script Date: 15.12.2020 20:58:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_dog]
@guest_fio varchar(150),
@guest_datar date,
@guest_passp_n varchar(150),
@guest_passp_s varchar(150),
@guest_dvp date,
@guest_kem_vid  varchar(150),
@guest_m_r varchar(150),
@guest_data_reg date,
@guest_pol varchar(150),
@guest_cel_p varchar(150),
@nomer_id int,
@date_dog date,
@srok_d decimal(10,2),
@admin_id int
as
begin
insert into  dogovor(guest_fio,guest_datar,guest_passp_n,guest_passp_s,guest_dvp,guest_kem_vid,guest_m_r,guest_data_reg,guest_pol,guest_cel_p,nomer_id,date_dog,srok_d,admin_id)values(@guest_fio,@guest_datar ,@guest_passp_n,@guest_passp_s,@guest_dvp,@guest_kem_vid,@guest_m_r,@guest_data_reg,@guest_pol,@guest_cel_p,@nomer_id,@date_dog,@srok_d,@admin_id)
end
GO

