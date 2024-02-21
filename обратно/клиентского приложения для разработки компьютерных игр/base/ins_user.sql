USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_user]    Script Date: 01.12.2020 21:48:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_user]
@usver_role varchar(50),
@usver_pass varchar(50)
as 
begin
insert into usver(usver_role,usver_pass) values(@usver_role,@usver_pass)
end
GO

