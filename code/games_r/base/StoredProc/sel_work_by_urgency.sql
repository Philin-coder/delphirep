USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_work_by_urgency]    Script Date: 08.06.2025 16:19:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc  [dbo].[sel_work_by_urgency]
@check_date date=null
as
begin
Set @check_date=ISNULL(@check_date,GETDATE())
select 
Work.N_Work,
Work.Nam_work,
Work.T_days,
Etap.Nam_etap
 from Work
 inner join Etap on Etap.N_Etap=Work.N_Etap
 where 1=1
and DATEdiff(DAY,@check_date,work.T_days)=3
end
GO

