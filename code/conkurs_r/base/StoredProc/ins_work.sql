USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_work]    Script Date: 25.04.2025 17:14:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_work] 
@work_naim varchar(1000),
@work_opis varchar(1000),
@work_data date,
@work_mark_and_about varchar(1000),
@id_user int 
as
begin
insert into m_work(work_naim,work_opis,work_data,work_mark_and_about,id_user)
values(@work_naim,@work_opis,@work_data,@work_mark_and_about,@id_user)
end
GO

