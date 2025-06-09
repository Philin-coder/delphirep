USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_manager]    Script Date: 09.06.2025 14:52:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_manager]
@fio varchar(1000),
@usverid int
as
begin
  insert into  manager(fio,usverid)values(@fio,@usverid)
end
GO

