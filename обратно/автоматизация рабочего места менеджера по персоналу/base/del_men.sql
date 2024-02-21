USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[del_men]    Script Date: 08.11.2020 12:44:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_men]
@maneger_id int
as
begin
delete from manager where manager.maneger_id=@maneger_id
end
GO

