USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[second_report]    Script Date: 23.03.2025 10:55:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[second_report]
/*Список студентов группы  курс на дату*/
@grup_id int,
@t_date date
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
  gruppa.kurs,
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
   
  and is_akadem=0
  and gruppa.grup_id=@grup_id
  and stud.data_pr<=@t_date
  and (stud.data_ot is  null or stud.data_ot>@t_date)
  order by stud.passp_fam,stud.passp_naim
end
GO

