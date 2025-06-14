USE [posech_r]
GO

/****** Object:  Table [dbo].[m_Group]    Script Date: 14.06.2025 22:31:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_Group](
	[id_group] [int] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](50) NOT NULL,
	[id_speciality] [int] NOT NULL,
 CONSTRAINT [PK__m_Group__8BE8BA1BCFFA33C3] PRIMARY KEY CLUSTERED 
(
	[id_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[m_Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Speciality] FOREIGN KEY([id_speciality])
REFERENCES [dbo].[Speciality] ([id_speciality])
GO

ALTER TABLE [dbo].[m_Group] CHECK CONSTRAINT [FK_Group_Speciality]
GO

