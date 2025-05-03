USE [hotel_r]
GO

/****** Object:  Table [dbo].[usluga]    Script Date: 03.05.2025 12:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usluga](
	[usl_id] [int] IDENTITY(1,1) NOT NULL,
	[usl_cost] [decimal](10, 2) NOT NULL,
	[usl_naim] [varchar](1000) NOT NULL,
	[usl_ed_ism] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_usluga] PRIMARY KEY CLUSTERED 
(
	[usl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

