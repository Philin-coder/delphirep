USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_spec]    Script Date: 14.06.2025 19:21:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_spec] 
  @id_speciality int
  as
  begin 
    delete from Speciality where 1=1 and Speciality.id_speciality=@id_speciality
  end
GO

