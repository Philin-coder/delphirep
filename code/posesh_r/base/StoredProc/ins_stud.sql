USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_stud]    Script Date: 15.06.2025 16:29:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_stud]
@fio nvarchar(255),
@email nvarchar(100),
@enrollment_date date,
@m_status  int,
@id_group int
as
begin
  insert into Student (fio,email,enrollment_date,m_status,id_group)
  values(@fio,@email,@enrollment_date,@m_status,@id_group)
end
GO

