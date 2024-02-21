USE [hotel]
GO

/****** Object:  Table [dbo].[dogovor]    Script Date: 15.12.2020 20:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dogovor](
	[dogovor_id] [int] IDENTITY(1,1) NOT NULL,
	[guest_fio] [varchar](150) NOT NULL,
	[guest_datar] [date] NOT NULL,
	[guest_passp_n] [varchar](150) NOT NULL,
	[guest_passp_s] [varchar](150) NOT NULL,
	[guest_dvp] [date] NOT NULL,
	[guest_kem_vid] [varchar](150) NOT NULL,
	[guest_m_r] [varchar](150) NOT NULL,
	[guest_data_reg] [date] NOT NULL,
	[guest_pol] [varchar](150) NOT NULL,
	[guest_cel_p] [varchar](150) NOT NULL,
	[nomer_id] [int] NOT NULL,
	[date_dog] [date] NOT NULL,
	[srok_d] [decimal](10, 2) NOT NULL,
	[admin_id] [int] NOT NULL,
 CONSTRAINT [PK_dogovor] PRIMARY KEY CLUSTERED 
(
	[dogovor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dogovor]  WITH CHECK ADD  CONSTRAINT [FK_dogovor_adm] FOREIGN KEY([admin_id])
REFERENCES [dbo].[adm] ([admin_id])
GO

ALTER TABLE [dbo].[dogovor] CHECK CONSTRAINT [FK_dogovor_adm]
GO

ALTER TABLE [dbo].[dogovor]  WITH CHECK ADD  CONSTRAINT [FK_dogovor_nomer] FOREIGN KEY([nomer_id])
REFERENCES [dbo].[nomer] ([nomer_id])
GO

ALTER TABLE [dbo].[dogovor] CHECK CONSTRAINT [FK_dogovor_nomer]
GO

