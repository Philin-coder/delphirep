USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_feedback]    Script Date: 12.05.2025 18:26:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_feedback]
@feedback_id int,
@feedback_text varchar(1000)
as
begin
update feedback set feedback_text=@feedback_text where 1=1 and feedback.feedback_id=@feedback_id
end
GO

