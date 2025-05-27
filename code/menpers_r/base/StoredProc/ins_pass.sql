USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[ins_pass]    Script Date: 08.11.2020 12:48:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc  [dbo].[ins_pass]
@user_pass varchar(100),
@usver_name varchar(100)
as
begin
insert into usver(user_pas,usver_name) values(@user_pass, @usver_name)
end
GO

