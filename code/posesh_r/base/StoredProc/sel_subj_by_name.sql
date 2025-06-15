USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_subj_by_name]    Script Date: 15.06.2025 20:16:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sel_subj_by_name]
@m_name nvarchar(255)
as
begin
select 
Subject.id_subject,
Subject.name,
Subject.credits 
from Subject 
where 1=1
and Subject.name=@m_name
end
GO

