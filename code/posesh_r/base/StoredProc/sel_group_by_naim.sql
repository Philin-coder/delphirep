USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_group_by_naim]    Script Date: 14.06.2025 23:20:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_group_by_naim]
  @group_name varchar(255)
  as
  begin
    select 
   m_Group.id_group,
   m_Group.group_name,
  Speciality.name
  from m_Group 
  inner join Speciality on Speciality.id_speciality=m_Group.id_speciality
  where 1=1 
  and m_Group.group_name=@group_name
  end

GO

