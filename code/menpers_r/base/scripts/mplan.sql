USE [men_pers_r]
GO

/****** Object:  Table [dbo].[mplan]    Script Date: 28.05.2025 16:50:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mplan](
	[id_plan] [int] IDENTITY(1,1) NOT NULL,
	[nazv] [varchar](1000) NOT NULL,
	[date_n] [date] NOT NULL,
	[opis] [varchar](150) NOT NULL,
	[maneger_id] [int] NOT NULL,
 CONSTRAINT [PK_plan] PRIMARY KEY CLUSTERED 
(
	[id_plan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[mplan]  WITH CHECK ADD  CONSTRAINT [FK_mplan_manager] FOREIGN KEY([maneger_id])
REFERENCES [dbo].[manager] ([maneger_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[mplan] CHECK CONSTRAINT [FK_mplan_manager]
GO

