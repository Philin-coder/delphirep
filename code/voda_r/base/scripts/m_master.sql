USE [vod_r]
GO

/****** Object:  Table [dbo].[m_master]    Script Date: 22.05.2025 17:16:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_master](
	[id_master] [int] IDENTITY(1,1) NOT NULL,
	[fio_master] [nvarchar](255) NOT NULL,
	[kont_d] [nvarchar](255) NULL,
	[dnr] [datetime] NOT NULL,
	[dns] [datetime] NOT NULL,
	[userid] [int] NOT NULL,
 CONSTRAINT [PK_m_master] PRIMARY KEY CLUSTERED 
(
	[id_master] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

