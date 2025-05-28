USE [men_pers_r]
GO

/****** Object:  Table [dbo].[usluga]    Script Date: 28.05.2025 16:51:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usluga](
	[id_usl] [int] IDENTITY(1,1) NOT NULL,
	[opis] [varchar](150) NOT NULL,
	[date_o] [date] NULL,
	[cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_usluga] PRIMARY KEY CLUSTERED 
(
	[id_usl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

