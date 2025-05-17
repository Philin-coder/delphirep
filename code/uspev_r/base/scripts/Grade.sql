USE [uspev_r]
GO

/****** Object:  Table [dbo].[Grade]    Script Date: 17.05.2025 11:28:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grade](
	[id_grade] [int] IDENTITY(1,1) NOT NULL,
	[id_student] [int] NULL,
	[id_subject] [int] NULL,
	[id_teacher] [int] NULL,
	[grade_value] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__Grade__6DB797E476F9FEB9] PRIMARY KEY CLUSTERED 
(
	[id_grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK__Grade__id_studen__3E52440B] FOREIGN KEY([id_student])
REFERENCES [dbo].[Student] ([id_student])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK__Grade__id_studen__3E52440B]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK__Grade__id_subjec__3F466844] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK__Grade__id_subjec__3F466844]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK__Grade__id_teache__403A8C7D] FOREIGN KEY([id_teacher])
REFERENCES [dbo].[Teacher] ([id_teacher])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK__Grade__id_teache__403A8C7D]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [CK__Grade__grade_val__3D5E1FD2] CHECK  (([grade_value]>=(2) AND [grade_value]<=(5)))
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [CK__Grade__grade_val__3D5E1FD2]
GO

