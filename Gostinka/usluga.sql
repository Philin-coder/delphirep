USE [hotel]
GO

/****** Object:  Table [dbo].[usluga]    Script Date: 15.12.2020 20:57:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usluga](
	[id_usl] [int] IDENTITY(1,1) NOT NULL,
	[usl_naim] [varchar](150) NOT NULL,
	[usl_stoim] [decimal](10, 2) NOT NULL,
	[usl_ed_izm] [varchar](150) NOT NULL,
 CONSTRAINT [PK_usluga] PRIMARY KEY CLUSTERED 
(
	[id_usl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

