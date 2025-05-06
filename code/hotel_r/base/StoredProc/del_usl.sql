USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_usl]    Script Date: 07.05.2025 0:38:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_usl]
@usl_id int
as
begin
delete from usluga where 1=1 and usluga.usl_id=@usl_id
end
GO

