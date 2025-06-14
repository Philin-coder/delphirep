USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_spec_by_naim]    Script Date: 14.06.2025 16:44:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_spec_by_naim]
@m_name varchar(255)
as
begin
select 
  Speciality.id_speciality,
  Speciality.name,
  Speciality.faculty 
  from Speciality 
  where 1=1
  and Speciality.name=@m_name
end
GO

