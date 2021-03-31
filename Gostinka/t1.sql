USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[t1]    Script Date: 15.12.2020 21:00:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[t1]
@nomer_id int,
@date_dog date
as
begin
select nomer.nomer_id, nomer.nomer_cat,nomer.nomer_status
from nomer,dogovor
where nomer.nomer_id=@nomer_id and dogovor.nomer_id=nomer.nomer_id and dogovor.date_dog=@date_dog
end

GO

