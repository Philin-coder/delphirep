USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[del_spec]    Script Date: 13.03.2025 15:45:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[del_spec] 
@spec_id int 
as 
begin
delete from spec where spec.spec_id=@spec_id
end
GO

