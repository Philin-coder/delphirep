USE [posech_r]
GO

/****** Object:  Table [dbo].[Grade]    Script Date: 12.06.2025 23:36:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grade](
	[id_grade] [int] IDENTITY(1,1) NOT NULL,
	[id_student] [int] NOT NULL,
	[id_subject] [int] NOT NULL,
	[id_teacher] [int] NOT NULL,
	[grade_value] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK__Grade__6DB797E4B477876A] PRIMARY KEY CLUSTERED 
(
	[id_grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Grade] ADD  CONSTRAINT [DF__Grade__date__5165187F]  DEFAULT (getdate()) FOR [date]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([id_student])
REFERENCES [dbo].[Student] ([id_student])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Subject]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Teacher] FOREIGN KEY([id_teacher])
REFERENCES [dbo].[Teacher] ([id_teacher])
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Teacher]
GO

ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [CHK_Grade_Value] CHECK  (([grade_value]>=(2) AND [grade_value]<=(5)))
GO

ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [CHK_Grade_Value]
GO

