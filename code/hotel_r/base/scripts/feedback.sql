USE [hotel_r]
GO

/****** Object:  Table [dbo].[feedback]    Script Date: 11.05.2025 19:47:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[dog_id] [int] NOT NULL,
	[feedback_text] [varchar](1000) NOT NULL,
	[feeadbackmarck] [int] NOT NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_dogovor] FOREIGN KEY([dog_id])
REFERENCES [dbo].[dogovor] ([dog_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback_dogovor]
GO

