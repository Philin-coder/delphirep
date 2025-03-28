USE [library]
GO

/****** Object:  Table [dbo].[ Book]    Script Date: 28.03.2025 9:27:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ Book](
	[ID_Book] [int] IDENTITY(1,1) NOT NULL,
	[Name_B] [varchar](150) NOT NULL,
	[m_Source] [varchar](70) NOT NULL,
	[Date_P] [date] NOT NULL,
	[m_Count] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[ID_Genre] [int] NOT NULL,
	[ID_Author] [int] NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
	[Number_of_Pages] [int] NOT NULL,
	[Year_of_Pub] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ Book]  WITH CHECK ADD  CONSTRAINT [FK_ Book] FOREIGN KEY([ID_Genre])
REFERENCES [dbo].[Genre] ([ID_Genre])
GO

ALTER TABLE [dbo].[ Book] CHECK CONSTRAINT [FK_ Book]
GO

ALTER TABLE [dbo].[ Book]  WITH CHECK ADD  CONSTRAINT [FK_authir] FOREIGN KEY([ID_Author])
REFERENCES [dbo].[Author] ([ID_Author])
GO

ALTER TABLE [dbo].[ Book] CHECK CONSTRAINT [FK_authir]
GO

