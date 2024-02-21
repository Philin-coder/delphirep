USE [hotel]
GO

/****** Object:  StoredProcedure [dbo].[ins_nomer]    Script Date: 15.12.2020 20:59:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_nomer]
@nomer_cat varchar(150),
@nomer_st decimal(10,2),
@nomer_status varchar(150)
as
begin
insert into nomer(nomer_cat,nomer_st,nomer_status)values(@nomer_cat ,@nomer_st,@nomer_status)
end



GO

