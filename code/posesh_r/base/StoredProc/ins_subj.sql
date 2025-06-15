USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_subj]    Script Date: 15.06.2025 22:01:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_subj]
@name nvarchar(255),
@credits  int
as
begin
  insert into Subject(name ,credits)values(@name,@credits)
end
GO

