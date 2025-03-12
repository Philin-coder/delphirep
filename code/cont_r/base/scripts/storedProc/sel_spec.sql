USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_spec]    Script Date: 12.03.2025 14:55:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_spec]
@spec_maim varchar(1000)
as 
begin
select * from spec where spec.spec_maim=@spec_maim
end
GO

