USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_dog]    Script Date: 10.05.2025 19:58:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_dog]
@dog_id int
as
begin
delete from dogovor where 1=1 and dogovor.dog_id=@dog_id
end
GO

