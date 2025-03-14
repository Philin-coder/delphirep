USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_grupp]    Script Date: 14.03.2025 16:45:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_grupp]
@kurs int,
@grup_id int 
as
begin
update gruppa set kurs=@kurs where 1=1 and  gruppa.grup_id=@grup_id
end
GO

