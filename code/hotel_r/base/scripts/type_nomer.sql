USE [hotel_r]
GO

/****** Object:  Table [dbo].[type_nomer]    Script Date: 03.05.2025 12:28:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[type_nomer](
	[id_type_nomer] [int] IDENTITY(1,1) NOT NULL,
	[type_naim] [varchar](1000) NOT NULL,
	[type_opis] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_type_nomer] PRIMARY KEY CLUSTERED 
(
	[id_type_nomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

