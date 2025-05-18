USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_stud]    Script Date: 18.05.2025 19:08:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_stud]
@id_student int,
@email  varchar(255)
as
begin
update Student set email=@email where 1=1 and Student.id_student=@id_student
end
GO

