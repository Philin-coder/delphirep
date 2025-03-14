USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[del_group]    Script Date: 14.03.2025 19:26:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_group]
 @grup_id int 
 as
 begin
 delete from gruppa where 1=1 and gruppa.grup_id=@grup_id
 end
GO

