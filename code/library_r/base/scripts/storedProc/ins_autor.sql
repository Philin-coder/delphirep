USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_autor]    Script Date: 02.04.2025 16:05:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_autor] 
@Name_A varchar(50)
as
begin
insert into Author (Name_A )values(@Name_A )
end
GO

