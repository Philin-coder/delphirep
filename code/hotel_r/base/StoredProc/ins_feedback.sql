USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_feedback]    Script Date: 12.05.2025 0:03:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_feedback] 
@dog_id int,
@feedback_text varchar(1000),
@feeadbackmarck int
as
begin
insert into feedback(dog_id,feedback_text,feeadbackmarck)values(@dog_id,@feedback_text,@feeadbackmarck )
end
GO

