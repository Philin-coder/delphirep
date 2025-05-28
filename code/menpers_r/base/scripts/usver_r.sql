USE [men_pers_r]
GO

/****** Object:  Table [dbo].[usver_r]    Script Date: 28.05.2025 16:51:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usver_r](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_pas] [varchar](100) NOT NULL,
	[usver_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_usver] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

