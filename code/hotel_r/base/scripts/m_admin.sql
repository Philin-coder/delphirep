USE [hotel_r]
GO

/****** Object:  Table [dbo].[m_admin]    Script Date: 03.05.2025 12:27:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_admin](
	[id_admin] [int] IDENTITY(1,1) NOT NULL,
	[fio_admin] [varchar](1000) NOT NULL,
	[smena] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_m_admin] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

