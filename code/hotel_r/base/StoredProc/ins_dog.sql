USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_dog]    Script Date: 10.05.2025 10:24:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[ins_dog]
@guest_fio varchar(1000),
@data_b date,
@pass_n varchar(1000),
@pass_seria varchar(1000),
@kem_vid varchar(1000),
@mesto_r varchar(1000),
@data_reg date,
@pol varchar(1000),
@perpose varchar(1000),
@nomer_id int,
@date_dog date,
@sr_dog int,
@id_admin int 
as
begin
insert into dogovor(guest_fio,data_b,pass_n,
pass_seria,kem_vid,mesto_r,data_reg,pol,
perpose,nomer_id,date_dog,sr_dog,id_admin) 
values(@guest_fio,@data_b,@pass_n,@pass_seria,
@kem_vid,@mesto_r,@data_reg,@pol,@perpose,
@nomer_id,@date_dog,@sr_dog,@id_admin )
end
GO

