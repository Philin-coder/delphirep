USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_user]    Script Date: 08.06.2025 23:06:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_user]
@usver_role varchar(1000),
@usver_pass varchar(1000)
as
begin
  insert into usver(usver_role,usver_pass)values(@usver_role,@usver_pass)
end
GO

