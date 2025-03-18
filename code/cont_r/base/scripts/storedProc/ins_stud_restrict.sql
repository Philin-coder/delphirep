USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_stud_restrict]    Script Date: 18.03.2025 9:55:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_stud_restrict]
@b_data date,
@pol int,
@civ varchar(1000),
@region varchar(1000),
@gorod varchar(1000),
@adr varchar(1000),
@passp_fam varchar(1000),
@passp_naim varchar(1000),
@mesto_jit int,
@mod_t varchar(1000),
@dom_t varchar(1000),
@data_pr date,
@grup_id int,
@st_email varchar(1000),
@is_akadem int 
as 
begin
insert into stud(b_data,pol,civ,region,gorod,adr,passp_fam,passp_naim,mesto_jit,
mod_t,dom_t,data_pr,grup_id,st_email,is_akadem)values(@b_data,@pol,@civ,@region,@gorod,@adr,@passp_fam,
@passp_naim,@mesto_jit,@mod_t,@dom_t,@data_pr,@grup_id,@st_email,@is_akadem )
end
GO

