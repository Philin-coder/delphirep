USE [uspev_r]
GO

/****** Object:  Table [dbo].[Teacher]    Script Date: 17.05.2025 11:29:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher](
	[id_teacher] [int] IDENTITY(1,1) NOT NULL,
	[fio] [varchar](255) NOT NULL,
	[department] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Teacher__3BAEF8F943903B45] PRIMARY KEY CLUSTERED 
(
	[id_teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

