USE [iCMSDB]
TRUNCATE TABLE [T_SYS_ROLE]
GO
SET IDENTITY_INSERT [dbo].[T_SYS_ROLE] ON 

INSERT [dbo].[T_SYS_ROLE] ([RoleID], [RoleCode], [IsShow], [IsDeault], [RoleName], [AddDate]) VALUES (1, N'admin', 0, 1, N'管理员', CAST(0x0000A64C010B7D5A AS DateTime))
INSERT [dbo].[T_SYS_ROLE] ([RoleID], [RoleCode], [IsShow], [IsDeault], [RoleName], [AddDate]) VALUES (1010, N'superadmin', 1, 0, N'超级管理员', CAST(0x0000A663010064B8 AS DateTime))
INSERT [dbo].[T_SYS_ROLE] ([RoleID], [RoleCode], [IsShow], [IsDeault], [RoleName], [AddDate]) VALUES (1011, N'guest', 1, 0, N'匿名用户', CAST(0x0000A66301023144 AS DateTime))
SET IDENTITY_INSERT [dbo].[T_SYS_ROLE] OFF
