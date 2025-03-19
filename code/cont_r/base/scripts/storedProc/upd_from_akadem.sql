USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_from_akadem]    Script Date: 20.03.2025 0:01:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_from_akadem]
@stud_id int
as
begin
update stud set is_akadem =0 where stud.stud_id= @stud_id
end

 
GO

