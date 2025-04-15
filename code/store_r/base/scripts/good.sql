USE [store_r]
GO

/****** Object:  Table [dbo].[good]    Script Date: 15.04.2025 11:13:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[good](
	[id_good] [int] IDENTITY(1,1) NOT NULL,
	[naim_good] [varchar](50) NOT NULL,
	[quant_good] [int] NOT NULL,
	[cost_good] [money] NOT NULL,
 CONSTRAINT [PK_good] PRIMARY KEY CLUSTERED 
(
	[id_good] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

