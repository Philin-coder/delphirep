USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_doc]    Script Date: 01.04.2025 20:11:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[upd_doc]
@status int,
@ID_Doc int
as begin
update doc set m_Status=@status where ID_Doc=@ID_Doc;
end
GO

