USE [men_pers]
GO

/****** Object:  Table [dbo].[usver]    Script Date: 08.11.2020 12:43:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usver](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_pas] [varchar](100) NOT NULL,
	[usver_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_usver] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

