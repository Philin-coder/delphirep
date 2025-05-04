USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_adm]    Script Date: 04.05.2025 9:27:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_adm]
@fio_admin varchar(1000),
@smena int
as
begin
insert into m_admin(fio_admin,smena )values(@fio_admin,@smena)
end
GO

