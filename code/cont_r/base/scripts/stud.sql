USE [cont_r]
GO

/****** Object:  Table [dbo].[stud]    Script Date: 15.03.2025 13:27:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stud](
	[stud_id] [int] IDENTITY(1,1) NOT NULL,
	[b_data] [date] NOT NULL,
	[pol] [int] NOT NULL,
	[civ] [varchar](1000) NOT NULL,
	[region] [varchar](1000) NOT NULL,
	[gorod] [varchar](1000) NOT NULL,
	[adr] [varchar](1000) NOT NULL,
	[passp] [varchar](1000) NOT NULL,
	[mesto_jit] [int] NOT NULL,
	[mod_t] [varchar](1000) NOT NULL,
	[dom_t] [varchar](1000) NULL,
	[data_pr] [date] NOT NULL,
	[data_ot] [date] NULL,
	[grup_id] [int] NOT NULL,
	[st_email] [varchar](1000) NOT NULL,
	[is_akadem] [int] NULL,
 CONSTRAINT [PK_stud] PRIMARY KEY CLUSTERED 
(
	[stud_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[stud]  WITH CHECK ADD  CONSTRAINT [FK_stud_gruppa] FOREIGN KEY([grup_id])
REFERENCES [dbo].[gruppa] ([grup_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[stud] CHECK CONSTRAINT [FK_stud_gruppa]
GO

