USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_manager]    Script Date: 01.12.2020 21:47:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_manager]
@fio varchar(50),
@usverid int
as
begin
insert into  manager(fio,usverid)values(@fio,@usverid)
end
GO

