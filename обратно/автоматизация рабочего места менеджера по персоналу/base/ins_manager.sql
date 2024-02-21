USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[ins_manager]    Script Date: 08.11.2020 12:46:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_manager]
@fio varchar(150),
@cont varchar(1000),
@email varchar(1000),
@phone varchar(1000),
@User_id int 
as
begin
insert into manager(fio,cont,email,phone,User_id) values(@fio,@cont,@email,@phone,@User_id)
end

GO

