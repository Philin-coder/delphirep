USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_good]    Script Date: 16.04.2025 17:44:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_good]
@id_good int,
@naim_good varchar(50)
as
begin
update good set naim_good=@naim_good where good.id_good=@id_good
end
GO

