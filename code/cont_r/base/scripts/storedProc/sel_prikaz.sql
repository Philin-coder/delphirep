USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_prikaz]    Script Date: 21.03.2025 12:59:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_prikaz]
@pr_nom varchar(1000)
as
begin
select  
 prikaz.pr_id,
 prikaz.pr_nom,
 prikaz.date_pr,
 prikaz.tip_pr,
 stud.passp_fam + ' ' + stud.passp_naim + IsNull(' ' +stud.passp_otch,'') AS fio
from prikaz
inner join stud on stud.stud_id=prikaz.stud_id
where 1=1
and stud.data_ot is null
and prikaz.pr_nom=@pr_nom
end
GO

