use uspev
create proc ins_prich
@prich_naim varchar (150)
as
begin
insert into prich(prich_naim) values(@prich_naim)
end
--select * from prich
--exec ins_prich 'неуспеваемость'
create  proc ins_klass_type
@naim_tip varchar(100)
as
begin
insert into type_class(naim_tip) values(@naim_tip)
end
 exec ins_klass_type 'математический'
 select * from type_class
create proc ins_klass
@klass_naim varchar(150), 
@Klass_r varchar(150),
@kol_m int,
@TYpe_claass_id int 
as 
begin
insert into  klass(klass_naim, Klass_r,kol_m,TYpe_claass_id) values(@klass_naim, @Klass_r,@kol_m,@TYpe_claass_id)
end
exec ins_klass '5a','Симоненко М.И',29,1
select * from klass
 create proc ins_uchen
 @fio varchar(150),
 @phone_m varchar(150),
 @adr varchar(150),
 @datar date,
 @pol varchar(150),
 @health_group varchar(150),
 @Datap date,
 @datav Date,
 @fio_m varchar(150),
 @citizen varchar(150),
 @phone_o varchar(150),
 @klass_id int
 as 
 begin
 insert into uchen(fio,phone_m,adr,datar,pol,health_group,Datap ,datav,fio_m,citizen,phone_o,klass_id)values(@fio,@phone_m,@adr,@datar,@pol,@health_group,@Datap,@datav,@fio_m,@citizen,@phone_o,@klass_id)
 end

 --select * from uchen
 --exec ins_uchen 'Иванов И .И','2345','Поле Свободы 4','2022-12-12','мужской','Здоров','2022-12-12','2022-12-12','Иванова И.Д.','Руссский','123',1
 --exec ins_uchen 'Иванов И .И','2345','Поле Свободы 4','2022-12-12','мужской','Здоров','2022-12-12','2022-12-12','Иванова И.Д.','Руссский','123',1
 create proc ins_prikaz
 @prikaz_date date, 
 @prikaz_type varchar(50),
 @date_k date,
 @uchen_id int,
 @prikaz_sod varchar(150),
 @prich_id int,
 @data_n date
 as
 begin
 insert into prikaz(prikaz_date,prikaz_type,date_k,uchen_id,prikaz_sod,prich_id,data_n)values(@prikaz_date, @prikaz_type,@date_k,@uchen_id,@prikaz_sod,@prich_id,@data_n)
 end
--exec ins_prikaz '2012-12-12','проба','2012-12-12',1,'проба2',1,'2012-12-12'
--select * from prikaz

create proc report1
@datan date,
@data_k date
as
begin
select uchen.uchen_id, uchen.FIO, uchen.datar, uchen.adr, uchen.pol, uchen.citizen, uchen.health_group, uchen.klass_id 
from uchen 
where uchen.Datap between  @datan and @data_k
end
exec report1 '2012-12-12','2030-12-21'







