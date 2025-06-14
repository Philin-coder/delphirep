USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_spec]    Script Date: 14.06.2025 18:55:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_spec]
  @id_speciality int,
  @m_name varchar(255)
  as
  begin
    update Speciality set name=@m_name where 1=1 and Speciality.id_speciality= @id_speciality
  end
GO

