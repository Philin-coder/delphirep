USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_m_order]    Script Date: 17.04.2025 9:55:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_m_order]
@adres varchar(1000),
@oredr_q int,
@pay_way varchar(1000),
@get_way varchar(100),
@is_get int,
@is_pay int,
@u_mail varchar(1000),
@id_good int,
@about_order varchar(1000)
as
begin
insert into m_order(adres,oredr_q,pay_way,get_way,is_get,is_pay,u_mail,id_good,about_order)
values(@adres,@oredr_q,@pay_way, @get_way,@is_get,@is_pay,@u_mail,@id_good,@about_order)
end
GO

