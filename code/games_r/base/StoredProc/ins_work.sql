USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_work]    Script Date: 08.06.2025 12:59:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_work]
@Nam_work varchar(1000),
@T_days date,
@N_Etap int
as 
begin
insert into Work(Nam_work,T_days,N_Etap) values(@Nam_work,@T_days,@N_Etap)
end
GO

