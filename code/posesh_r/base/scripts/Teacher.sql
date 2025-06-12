USE [posech_r]
GO

/****** Object:  Table [dbo].[Teacher]    Script Date: 12.06.2025 23:39:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher](
	[id_teacher] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](255) NOT NULL,
	[department] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Teacher__3BAEF8F9D7C4D289] PRIMARY KEY CLUSTERED 
(
	[id_teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

