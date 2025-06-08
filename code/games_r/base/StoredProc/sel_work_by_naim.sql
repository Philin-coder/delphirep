USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_work_by_naim]    Script Date: 08.06.2025 13:12:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_work_by_naim]
 @Nam_work varchar(1000)
 as
 begin
 select 
Work.N_Work,
Work.Nam_work,
Work.T_days,
Etap.Nam_etap
 from Work
 inner join Etap on Etap.N_Etap=Work.N_Etap
 where 1=1
 and Work.Nam_work=@Nam_work
 end
GO

