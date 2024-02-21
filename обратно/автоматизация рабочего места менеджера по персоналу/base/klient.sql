USE [men_pers]
GO

/****** Object:  Table [dbo].[klient]    Script Date: 08.11.2020 12:42:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[klient](
	[klient_id] [int] IDENTITY(1,1) NOT NULL,
	[naim] [varchar](1000) NOT NULL,
	[otch] [varchar](1000) NOT NULL,
	[snmae] [varchar](1000) NOT NULL,
	[b_date] [date] NOT NULL,
	[cont] [varchar](1000) NOT NULL,
	[phone] [varchar](1000) NOT NULL,
	[email] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_klient] PRIMARY KEY CLUSTERED 
(
	[klient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

