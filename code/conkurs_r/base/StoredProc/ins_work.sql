USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_work]    Script Date: 23.04.2025 22:35:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_work]
@work_naim varchar(1000),
@work_opis varchar(1000),
@work_data  date
as
begin
insert into  mwork(work_naim ,work_opis,work_data )values(@work_naim,@work_opis,@work_data )
end

GO

