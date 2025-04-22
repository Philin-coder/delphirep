USE [concurs_r]
GO

/****** Object:  Table [dbo].[mwork]    Script Date: 22.04.2025 11:30:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mwork](
	[id_work] [int] IDENTITY(1,1) NOT NULL,
	[work_naim] [varchar](1000) NOT NULL,
	[work_opis] [varchar](1000) NOT NULL,
	[work_data] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_mwork] PRIMARY KEY CLUSTERED 
(
	[id_work] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

