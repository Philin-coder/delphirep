USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_spec]    Script Date: 14.06.2025 18:01:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_spec]
 @m_name varchar(255),
 @faculty varchar(255)
  as
  begin
    insert into  Speciality(name,faculty)values(@m_name ,@faculty)
  end
GO

