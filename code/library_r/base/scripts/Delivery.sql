USE [library]
GO

/****** Object:  Table [dbo].[Delivery]    Script Date: 28.03.2025 9:27:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Delivery](
	[ID_Delivery] [int] IDENTITY(1,1) NOT NULL,
	[ID_Doc] [int] NOT NULL,
	[ID_Reader] [int] NOT NULL,
	[Date_D] [date] NOT NULL,
	[Date_Return_Plan] [date] NOT NULL,
	[Date_Return_Fact] [date] NULL,
 CONSTRAINT [PK__tmp_ms_x__02E3B7D0EF07331B] PRIMARY KEY CLUSTERED 
(
	[ID_Delivery] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_To_Doc] FOREIGN KEY([ID_Doc])
REFERENCES [dbo].[Doc] ([ID_Doc])
GO

ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_To_Doc]
GO

ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_To_Reader] FOREIGN KEY([ID_Reader])
REFERENCES [dbo].[Reader] ([ID_Reader])
GO

ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_To_Reader]
GO

