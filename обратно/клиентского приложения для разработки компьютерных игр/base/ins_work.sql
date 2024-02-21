USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_work]    Script Date: 01.12.2020 21:48:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_work]
@Nam_work varchar(100),
@T_days date,
@N_Etap int
as 
begin
insert into Work(Nam_work,T_days,N_Etap) values(@Nam_work,@T_days,@N_Etap)
end
GO

