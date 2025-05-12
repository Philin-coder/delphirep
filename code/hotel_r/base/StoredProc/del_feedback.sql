USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_feedback]    Script Date: 12.05.2025 18:49:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_feedback]
@feedback_id int
as
begin
delete from feedback where 1=1 and feedback.feedback_id=@feedback_id
end


GO

