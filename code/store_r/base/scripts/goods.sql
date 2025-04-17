USE [store_r]
GO

/****** Object:  Table [dbo].[goods]    Script Date: 17.04.2025 22:45:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[goods](
	[GoodsId] [int] NOT NULL,
	[goods_naim] [varchar](150) NOT NULL,
	[goods_cost] [decimal](10, 2) NOT NULL
) ON [PRIMARY]
GO

