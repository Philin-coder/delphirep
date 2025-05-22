USE [vod_r]
GO

/****** Object:  Table [dbo].[type_s]    Script Date: 22.05.2025 17:17:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[type_s](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[typr_opis] [nvarchar](255) NOT NULL,
	[mechan] [nvarchar](255) NOT NULL,
	[tochn] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_type_s] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

