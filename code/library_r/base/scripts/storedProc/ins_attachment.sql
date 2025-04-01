USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_attachment]    Script Date: 01.04.2025 19:42:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_attachment]
@file_name_attachment varchar(1000),
@attachment  varbinary(max),
@attachment_description varchar(1000),
@ID_Doc int
as
begin
insert into attachment (file_name_attachment,attachment,attachment_description,ID_Doc)values
(@file_name_attachment,@attachment ,@attachment_description,@ID_Doc)
end
GO

