USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_genre]    Script Date: 03.04.2025 17:39:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_genre]
@Name_G varchar(50)
as
begin
insert  into Genre(Name_G) values(@Name_G)
end
GO

