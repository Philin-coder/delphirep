USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_sub]    Script Date: 18.05.2025 12:25:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[sel_sub]
@name varchar(255) 
as
begin
  select 
  Subject.id_subject, 
  Subject.name, 
  Subject.credits 
  from Subject 
  where 1=1 
  and Subject.name=@name

end
GO

