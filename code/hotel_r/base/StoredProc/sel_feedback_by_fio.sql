USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_feedback_by_fio]    Script Date: 12.05.2025 0:09:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_feedback_by_fio]
@guest_fio varchar(1000)
as
begin
select 
  feedback.feedback_id,
  dogovor.guest_fio,
  feedback.feedback_text,
 case 
   when  feedback.feeadbackmarck=0 then 'Очень плохо'
   when  feedback.feeadbackmarck=1 then 'Плохо'
   when  feedback.feeadbackmarck=2 then 'Удовлетворительно'
   when  feedback.feeadbackmarck=3 then 'Хорошо'
   else 'Отлично'
 end as fb
from feedback 
inner join dogovor on dogovor.dog_id=feedback.dog_id
where 1=1
and dogovor.guest_fio=@guest_fio
end
GO

