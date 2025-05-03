USE [hotel_r]
GO

/****** Object:  Table [dbo].[pay]    Script Date: 03.05.2025 12:27:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pay](
	[pay_id] [int] IDENTITY(1,1) NOT NULL,
	[usl_id] [int] NOT NULL,
	[pay_data] [date] NOT NULL,
	[days] [int] NOT NULL,
	[pay_from] [varchar](1000) NOT NULL,
	[total_s] [float] NOT NULL,
	[dog_id] [int] NOT NULL,
 CONSTRAINT [PK_pay] PRIMARY KEY CLUSTERED 
(
	[pay_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[pay]  WITH CHECK ADD  CONSTRAINT [FK_pay_dogovor] FOREIGN KEY([dog_id])
REFERENCES [dbo].[dogovor] ([dog_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[pay] CHECK CONSTRAINT [FK_pay_dogovor]
GO

ALTER TABLE [dbo].[pay]  WITH CHECK ADD  CONSTRAINT [FK_pay_usluga] FOREIGN KEY([usl_id])
REFERENCES [dbo].[usluga] ([usl_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[pay] CHECK CONSTRAINT [FK_pay_usluga]
GO

