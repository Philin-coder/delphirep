USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[del_pass]    Script Date: 27.05.2025 18:03:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[del_pass]
@user_id int
as
begin
delete from usver_r where usver_r.user_id=@user_id
end
GO

