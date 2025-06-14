USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_teacher]    Script Date: 14.06.2025 10:11:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_teacher]
@fio varchar(255),
@department varchar(255)
as
begin
  insert into Teacher(fio ,department)  
  values(@fio,@department)
end
GO

