USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[third_report]    Script Date: 23.03.2025 21:32:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[third_report]
  /*Список студентов, принятых в техникум за период */
  @d1 date,
  @d2 date
  as
  begin
  select 
  stud.stud_id,
  stud.b_data,
  case stud.pol when 1 then 'Мужсокой'  else 'Женский' end as sex,
  stud.civ,
  stud.region,
  stud.gorod,
  stud.adr,
  stud.passp_fam + ' ' + stud.passp_naim + IsNull(' ' +stud.passp_otch,'') AS fio,
  case stud.mesto_jit when  1 then 'Съем' else 'Общежитие' end as to_live,
  stud.mod_t,
  stud.dom_t,
  stud.data_pr,
  gruppa.naim_grup,
  stud.st_email
 from stud 
 inner join gruppa on gruppa.grup_id=stud.grup_id
 inner join spec on spec.spec_id=gruppa.spec_id
  where 1=1
  and stud.data_ot is  null
  and is_akadem=0
  and stud.data_pr between @d1 and @d2
  end
GO

