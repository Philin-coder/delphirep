USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_pas]    Script Date: 27.05.2025 17:47:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[upd_pas]
@user_id int ,
@user_pas varchar(1000)
as
begin
update usver_r set user_pas=@user_pas where 1=1 and usver_r.user_id=@user_id
end


GO

