USE [TrainingDB3]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/5/2023 9:55:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Active] [int] NULL,
	[Salary] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSrc]    Script Date: 4/5/2023 9:55:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSrc](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Active] [int] NULL,
	[Salary] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (1, N'Pamelia', N'Jackson', N'pamelia.jackson@mystore.com', 1, CAST(1001000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (2, N'Kasha', N'David', N'kasha.david@mystore.com', 1, CAST(121000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (3, N'George', N'Boyer', N'george.boyer@mystore.com', 1, CAST(40000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[EmployeeSrc] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (1, N'Pamelia', N'Jackson', N'pamelia.jackson1@mystore.com', 1, CAST(1001000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[EmployeeSrc] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (2, N'Kasha', N'David', N'kasha.david@mystore.com', 1, CAST(125000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[EmployeeSrc] ([EmployeeID], [FirstName], [LastName], [Email], [Active], [Salary]) VALUES (4, N'Mohan', N'Sharma', N'mohan.sharma@mystore.com', 1, CAST(30000.00 AS Decimal(10, 2)))
GO
