USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_grade]    Script Date: 19.05.2025 11:23:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[upd_grade]
@id_grade int,
@grade_value int
as
begin
update  grade set grade_value=@grade_value where 1=1 and Grade.id_grade=@id_grade
end
GO

