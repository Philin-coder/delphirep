USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_subject]    Script Date: 18.05.2025 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_subject] 
  @name varchar(255),
  @credits int 
  as
  begin
  insert into Subject(name ,credits)values(@name,@credits)
  end
GO

