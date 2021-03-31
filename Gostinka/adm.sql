USE [hotel]
GO

/****** Object:  Table [dbo].[adm]    Script Date: 15.12.2020 20:56:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[adm](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_fio] [varchar](150) NOT NULL,
	[admin_smena] [varchar](150) NOT NULL,
 CONSTRAINT [PK_adm] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

