USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_reject_stud]    Script Date: 20.03.2025 15:43:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_reject_stud]
@stud_id int,
@reject_date date
as
begin
update stud set stud.data_ot=@reject_date where stud.stud_id=@stud_id
end
GO

