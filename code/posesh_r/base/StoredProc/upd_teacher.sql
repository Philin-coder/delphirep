USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_teacher]    Script Date: 14.06.2025 15:08:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_teacher]
@id_teacher int,
@department varchar(255)
as
begin
  update Teacher set  department=@department where 1=1 and  Teacher.id_teacher=@id_teacher
end
GO

