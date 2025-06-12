USE [posech_r]
GO

/****** Object:  Table [dbo].[Attendance]    Script Date: 12.06.2025 23:36:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Attendance](
	[id_attendance] [int] IDENTITY(1,1) NOT NULL,
	[id_lesson] [int] NOT NULL,
	[id_student] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[note] [nvarchar](255) NULL,
 CONSTRAINT [PK__Attendan__9DC1D18A72573DE6] PRIMARY KEY CLUSTERED 
(
	[id_attendance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Lesson] FOREIGN KEY([id_lesson])
REFERENCES [dbo].[Lesson] ([id_lesson])
GO

ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Lesson]
GO

ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([id_student])
REFERENCES [dbo].[Student] ([id_student])
GO

ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO

