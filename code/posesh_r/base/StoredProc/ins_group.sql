USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_group]    Script Date: 15.06.2025 10:06:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_group]
  @group_name nvarchar(50),
  @id_speciality int
  as
  begin
    insert into m_Group(group_name,id_speciality)values(@group_name,@id_speciality)
  end
GO

