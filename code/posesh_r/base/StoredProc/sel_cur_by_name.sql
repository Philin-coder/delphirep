USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_cur_by_name]    Script Date: 16.06.2025 10:39:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_cur_by_name]
@m_name nvarchar(255)
as
begin
  select 
 Curriculum.id_curriculum,
 Speciality.name,
 Subject.name
from Curriculum 
inner join Speciality on Speciality.id_speciality=Curriculum.id_speciality
inner join Subject on Subject.id_subject=Curriculum.id_subject
where 1=1
and Speciality.name=@m_name
end
GO

