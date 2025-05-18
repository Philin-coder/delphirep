USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[del_teacher]    Script Date: 18.05.2025 10:51:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_teacher]
  @id_teacher int
  as
  begin
  delete from Teacher where 1=1 and Teacher.id_teacher=@id_teacher
  end
GO

