USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_cur]    Script Date: 16.06.2025 11:44:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_cur]
@id_speciality int,
@id_subject int
as
begin
  insert into Curriculum(id_speciality,id_subject)values(@id_speciality,@id_subject)
end
GO

