USE [posech_r]
GO

/****** Object:  Table [dbo].[Curriculum]    Script Date: 12.06.2025 23:36:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Curriculum](
	[id_curriculum] [int] IDENTITY(1,1) NOT NULL,
	[id_speciality] [int] NOT NULL,
	[id_subject] [int] NOT NULL,
 CONSTRAINT [PK__Curricul__8151415F91383F19] PRIMARY KEY CLUSTERED 
(
	[id_curriculum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Speciality] FOREIGN KEY([id_speciality])
REFERENCES [dbo].[Speciality] ([id_speciality])
GO

ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Speciality]
GO

ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO

ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Subject]
GO

