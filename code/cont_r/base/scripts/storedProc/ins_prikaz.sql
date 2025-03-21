USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_prikaz]    Script Date: 21.03.2025 16:36:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_prikaz]
@pr_nom varchar(1000),
@date_pr date,
@tip_pr varchar(1000),
@stud_id int
as
begin
insert into prikaz(pr_nom,date_pr,tip_pr,stud_id) values(@pr_nom ,@date_pr,@tip_pr,@stud_id)
end
GO

