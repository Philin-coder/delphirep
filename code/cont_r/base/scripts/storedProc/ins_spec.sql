USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_spec]    Script Date: 12.03.2025 14:58:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_spec]
@spec_maim varchar(1000)
as
begin
insert into spec(spec_maim)values(@spec_maim)
end
GO

