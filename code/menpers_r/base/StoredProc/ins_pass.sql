USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_pass]    Script Date: 27.05.2025 16:25:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc  [dbo].[ins_pass]
@user_pass varchar(100),
@usver_name varchar(100)
as
begin
insert into usver_r(user_pas,usver_name) values(@user_pass, @usver_name)
end
GO

