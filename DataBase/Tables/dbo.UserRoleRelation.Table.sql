SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleRelation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[UserID] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserRoleRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleRelation_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[UserRoleRelation] CHECK CONSTRAINT [FK_UserRoleRelation_Roles]
GO
ALTER TABLE [dbo].[UserRoleRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleRelation_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserRoleRelation] CHECK CONSTRAINT [FK_UserRoleRelation_Users]
GO
