USE [store_r]
GO

/****** Object:  Table [dbo].[goods]    Script Date: 18.04.2025 14:54:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[goods](
	[GoodsId] [int] NOT NULL,
	[goods_naim] [varchar](150) NOT NULL,
	[goods_cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[GoodsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

