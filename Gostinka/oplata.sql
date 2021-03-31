USE [hotel]
GO

/****** Object:  Table [dbo].[oplata]    Script Date: 15.12.2020 20:57:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[oplata](
	[id_opl] [int] IDENTITY(1,1) NOT NULL,
	[id_usl] [int] NOT NULL,
	[date_opl] [date] NOT NULL,
	[kol_d] [int] NOT NULL,
	[form_opl] [varchar](150) NOT NULL,
	[total_s] [decimal](10, 2) NOT NULL,
	[dogovor_id] [int] NOT NULL,
 CONSTRAINT [PK_oplata] PRIMARY KEY CLUSTERED 
(
	[id_opl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[oplata]  WITH CHECK ADD  CONSTRAINT [FK_oplata_dogovor] FOREIGN KEY([dogovor_id])
REFERENCES [dbo].[dogovor] ([dogovor_id])
GO

ALTER TABLE [dbo].[oplata] CHECK CONSTRAINT [FK_oplata_dogovor]
GO

ALTER TABLE [dbo].[oplata]  WITH CHECK ADD  CONSTRAINT [FK_oplata_usluga] FOREIGN KEY([id_usl])
REFERENCES [dbo].[usluga] ([id_usl])
GO

ALTER TABLE [dbo].[oplata] CHECK CONSTRAINT [FK_oplata_usluga]
GO

