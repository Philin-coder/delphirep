USE [men_pers]
GO

/****** Object:  Table [dbo].[manager]    Script Date: 08.11.2020 12:42:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[manager](
	[maneger_id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [varchar](150) NOT NULL,
	[cont] [varchar](1000) NOT NULL,
	[email] [varchar](1000) NOT NULL,
	[phone] [varchar](1000) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_manager] PRIMARY KEY CLUSTERED 
(
	[maneger_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[manager]  WITH CHECK ADD  CONSTRAINT [FK_manager_usver1] FOREIGN KEY([user_id])
REFERENCES [dbo].[usver] ([user_id])
GO

ALTER TABLE [dbo].[manager] CHECK CONSTRAINT [FK_manager_usver1]
GO

