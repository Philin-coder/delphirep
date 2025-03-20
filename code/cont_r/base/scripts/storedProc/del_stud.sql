USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[del_stud]    Script Date: 20.03.2025 19:14:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_stud]
@stud_id int 
as
begin
delete from stud where stud.stud_id=@stud_id
end
GO

