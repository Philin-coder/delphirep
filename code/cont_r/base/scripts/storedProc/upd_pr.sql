USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_pr]    Script Date: 21.03.2025 17:45:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_pr]
@date_pr date,
@pr_id int
as 
begin
update prikaz set date_pr=@date_pr where prikaz.pr_id=@pr_id
end
GO

