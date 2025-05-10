USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_dog_by_fio]    Script Date: 10.05.2025 10:01:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sel_dog_by_fio]
@guest_fio varchar(1000)
as
begin
select 
dogovor.dog_id,
dogovor.guest_fio,
dogovor.data_b,
dogovor.pass_n,
dogovor.pass_seria,
dogovor.kem_vid,
dogovor.mesto_r,
dogovor.data_reg,
dogovor.pol,
dogovor.perpose,
nomer.nomer_kind,
dogovor.date_dog,
dogovor.sr_dog,
m_admin.fio_admin
from dogovor 
inner join nomer on  dogovor.nomer_id=nomer.nomer_id
inner join m_admin on dogovor.id_admin=m_admin.id_admin
where 1=1 and dogovor.guest_fio=@guest_fio
end
GO

