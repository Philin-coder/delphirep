USE [hotel]
GO

/****** Object:  Table [dbo].[nomer]    Script Date: 15.12.2020 20:57:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nomer](
	[nomer_id] [int] IDENTITY(1,1) NOT NULL,
	[nomer_cat] [varchar](150) NOT NULL,
	[nomer_st] [decimal](10, 2) NOT NULL,
	[nomer_status] [varchar](150) NOT NULL,
 CONSTRAINT [PK_nomer] PRIMARY KEY CLUSTERED 
(
	[nomer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

