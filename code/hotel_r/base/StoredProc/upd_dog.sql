USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_dog]    Script Date: 10.05.2025 19:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[upd_dog]
@dog_id int, 
@perpose varchar(1000)
as 
begin
update dogovor set perpose=@perpose where 1=1 and dogovor.dog_id=@dog_id
end


GO

