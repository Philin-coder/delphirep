USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_spec]    Script Date: 13.03.2025 11:48:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_spec] 
@spec_maim varchar(1000),
@spec_id int
as
begin
update spec set spec_maim=@spec_maim where spec.spec_id=@spec_id
end
GO

