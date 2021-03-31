--use somebase
select * from people

alter table people add  carta varbinary(max)
select * from people
create master Key encryption by password='Master,Super_password#'
create certificate mysert with subject='AdminBdCertificate'
create symmetric key simschet with algorithm=aes_256 encryption by certificate mysert
select * from sys.symmetric_keys
select * from sys.certificates
backup master key to file='c:\practbases\master2\peoplekey1' encryption by password='MPassword@1'
backup  certificate mysert  to file='c:\practbases\master2\peoplecertif'
backup service master key  to file='c:\practbases\master2\peoplemaster' encryption by password='MSPassword@1'
open symmetric key simschet decryption by certificate mysert
update  people set carta=(ENCRYPTBYKEY(KEY_GUID('simschet'),'schet'))
open symmetric key simschet decryption  by certificate mysert
select CONVERT(varchar, DECRYPTBYkey( carta)) from people
close symmetric key simschet
select carta from people
select * from  people
create view  peopleview 
as
select carta from people
select * from people
select * from peopleview
open symmetric key simschet decryption  by certificate mysert
insert into peopleview(carta) values(ENCRYPTBYKEY(KEY_GUID('simschet'),'YOURCARD'))
open symmetric key simschet decryption  by certificate mysert
select CONVERT(varchar, DECRYPTBYkey( carta)) from peopleview
close symmetric key simschet
select * from peopleview
CREATE PROCEDURE shifr 
@KOD VARCHAR(30)
AS
begin
open symmetric key simschet decryption  by certificate mysert
insert into peopleview(carta) values(ENCRYPTBYKEY(KEY_GUID('simschet'),@kod))
close symmetric key simschet
end
exec  shifr 'проба'
create procedure locker 
as
begin
open symmetric key simschet decryption  by certificate mysert
select CONVERT(varchar, DECRYPTBYkey( carta)) carta from peopleview
end
exec locker 
select * from peopleview


























