USE [posech_r]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 12.06.2025 23:38:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student](
	[id_student] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](255) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[enrollment_date] [date] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[id_group] [int] NOT NULL,
 CONSTRAINT [PK__Student__2BE2EBB649AE330E] PRIMARY KEY CLUSTERED 
(
	[id_student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Student__AB6E616436093645] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([id_group])
REFERENCES [dbo].[Group] ([id_group])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CHK_Student_Email] CHECK  (([email] like '%_@__%.__%'))
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CHK_Student_Email]
GO

