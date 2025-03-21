USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[del_pr]    Script Date: 21.03.2025 18:24:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_pr]
@pr_id int 
as
begin
delete  from  prikaz where prikaz.pr_id=@pr_id
end
GO

