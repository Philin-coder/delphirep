USE [men_pers]
GO

/****** Object:  Table [dbo].[usluga]    Script Date: 08.11.2020 12:43:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usluga](
	[id_usl] [int] IDENTITY(1,1) NOT NULL,
	[opis] [varchar](150) NOT NULL,
	[date_o] [date] NULL,
	[cost] [decimal](10, 2) NOT NULL,
	[klient_id] [int] NOT NULL,
 CONSTRAINT [PK_usluga] PRIMARY KEY CLUSTERED 
(
	[id_usl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[usluga]  WITH CHECK ADD  CONSTRAINT [FK_usluga_klient] FOREIGN KEY([klient_id])
REFERENCES [dbo].[klient] ([klient_id])
GO

ALTER TABLE [dbo].[usluga] CHECK CONSTRAINT [FK_usluga_klient]
GO

