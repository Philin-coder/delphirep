USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_teacher]    Script Date: 17.05.2025 12:56:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_teacher]
@fio varchar(255),
@department varchar(100)
as
begin
insert  into Teacher(fio ,department)values(@fio ,@department)
end
GO

