USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_stud]    Script Date: 18.05.2025 17:37:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_stud]
@fio varchar(255),
@group_name varchar(255),
@email varchar(255)
as
begin
insert into  Student(fio,group_name ,email) values(@fio,@group_name ,@email)
end
GO

