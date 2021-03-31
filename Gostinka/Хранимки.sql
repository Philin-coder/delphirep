--use hotel
create proc ins_adm
@admin_fio  varchar(150),
@admin_smena varchar(150)
as
begin
insert into adm(admin_fio,admin_smena)values(@admin_fio ,@admin_smena)
end
exec ins_adm 'Петров','Дневная'
--select * from adm
create  proc ins_usluga
@usl_naim varchar(150),
@usl_stoim decimal(10,2),
@usl_ed_izm varchar(150)
as
begin
insert into usluga(usl_naim ,usl_stoim,usl_ed_izm)values(@usl_naim ,@usl_stoim,@usl_ed_izm )
end
exec ins_usluga 'Обертываание шоколадом',19.0000,'сеанс'
--select * from usluga
create proc ins_nomer
@nomer_cat varchar(150),
@nomer_st decimal(10,2),
@nomer_status varchar(150)
as
begin
insert into nomer(nomer_cat,nomer_st,nomer_status)values(@nomer_cat ,@nomer_st,@nomer_status)
end
 exec ins_nomer 'single',150.00,'свободен'
 select * from nomer
create proc ins_dog
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
exec ins_dog 'Иванов И.И','1988-10-13','123244','12345','2020-09-15','УФМС по московской области','Москва','2020-05-01','мужской','отдых',1,'2020-12-12',10.5,1
select * from dogovor
create proc ins_opl
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
exec ins_opl 1,'2020-10-03',4,'картой',22.00,1
select * from nomer
create  proc t1
@nomer_id int,
@date_dog date
as
begin
select nomer.nomer_id, nomer.nomer_cat,nomer.nomer_status
from nomer,dogovor
where nomer.nomer_id=@nomer_id and dogovor.nomer_id=nomer.nomer_id and dogovor.date_dog=@date_dog
end
exec t1 1,'2020-12-12'
select * from dogovor