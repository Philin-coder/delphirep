USE [posech_r]
GO

/****** Object:  Table [dbo].[Lesson]    Script Date: 17.06.2025 11:35:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lesson](
	[id_lesson] [int] IDENTITY(1,1) NOT NULL,
	[id_subject] [int] NOT NULL,
	[id_teacher] [int] NOT NULL,
	[date] [date] NOT NULL,
	[time_start] [time](7) NOT NULL,
	[time_end] [time](7) NOT NULL,
	[l_type] [int] NOT NULL,
 CONSTRAINT [PK__Lesson__BC5E15A0C82BB426] PRIMARY KEY CLUSTERED 
(
	[id_lesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO

ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Subject]
GO

ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Teacher] FOREIGN KEY([id_teacher])
REFERENCES [dbo].[Teacher] ([id_teacher])
GO

ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Teacher]
GO

