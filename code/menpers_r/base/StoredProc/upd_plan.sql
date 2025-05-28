USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_plan]    Script Date: 28.05.2025 20:45:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_plan]
 @id_plan int,
 @date_n date
 as
 begin
 update mplan set date_n=@date_n where 1=1 and mplan.id_plan=@id_plan
 end

GO

