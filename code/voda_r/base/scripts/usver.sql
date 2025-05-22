USE [vod_r]
GO

/****** Object:  Table [dbo].[usver]    Script Date: 22.05.2025 17:17:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usver](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_usver] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

