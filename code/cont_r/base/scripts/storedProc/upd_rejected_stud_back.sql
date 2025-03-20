USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_rejected_stud_back]    Script Date: 20.03.2025 15:50:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_rejected_stud_back]
@stud_id int
as
begin
update stud set stud.data_ot=Null where stud.stud_id=@stud_id
end
GO

