USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_usver]    Script Date: 09.06.2025 11:49:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_usver]
@usverId int,
@usver_pass varchar(1000)
as
begin
  update usver set usver_pass=@usver_pass where 1=1 and usver.usverId=@usverId
end
GO

