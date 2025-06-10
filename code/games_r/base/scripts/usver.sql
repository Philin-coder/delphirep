USE [games_r]
GO

/****** Object:  Table [dbo].[usver]    Script Date: 10.06.2025 22:06:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usver](
	[usverId] [int] IDENTITY(1,1) NOT NULL,
	[usver_role] [varchar](1000) NOT NULL,
	[usver_pass] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_usver] PRIMARY KEY CLUSTERED 
(
	[usverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

