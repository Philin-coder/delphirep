USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 13.05.2025 12:24:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  proc [dbo].[report1]
@d1 date,
@d2 date
as
begin
select dogovor.dog_id, dogovor.data_b,  dogovor.pass_n, dogovor.pass_seria,dogovor.kem_vid,dogovor.mesto_r,dogovor.data_reg,
dogovor.pol,dogovor.perpose,dogovor.guest_fio,nomer.nomer_kind, dogovor.date_dog, dogovor.sr_dog,fio_admin
from dogovor
inner join nomer on dogovor.nomer_id=nomer.nomer_id 
inner join m_admin on dogovor.id_admin=m_admin.id_admin
where 1=1
and dogovor.date_dog between @d1 and @d2
end
GO

