USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_teacher]    Script Date: 18.05.2025 9:42:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_teacher]
  @department varchar(255),
  @id_teacher int
  As
begin
  update Teacher set department=@department where 1=1 and Teacher.id_teacher=@id_teacher
end
GO

