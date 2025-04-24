USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_user]    Script Date: 24.04.2025 14:38:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[ins_user]
@fio varchar(50),
@user_phone varchar(1000),
@user_pas varchar(1000)
as
begin
insert into m_user(fio,user_phone, user_pas) values(@fio,@user_phone,@user_pas)
end
GO

