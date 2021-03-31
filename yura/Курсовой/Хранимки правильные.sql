--use Razrab_Andryuschenko
--SET IDENTITY_INSERT Dolshnost ON
create proc ins_dol
@N_Dol int,
@Nam_dol varchar(100)
as 
begin
insert into Dolshnost(N_Dol,Nam_dol) values(@N_Dol,@Nam_dol)
end
exec ins_dol 1, 'проектировщик'
select * from Dolshnost

