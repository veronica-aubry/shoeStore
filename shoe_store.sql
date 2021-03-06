USE [shoe_store]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/10/2016 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brands_stores]    Script Date: 3/10/2016 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands_stores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NULL,
	[brand_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stores]    Script Date: 3/10/2016 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([id], [name]) VALUES (1, N'Nike')
INSERT [dbo].[brands] ([id], [name]) VALUES (2, N'Aldo')
INSERT [dbo].[brands] ([id], [name]) VALUES (3, N'Sketchers')
INSERT [dbo].[brands] ([id], [name]) VALUES (4, N'Rocket Dog')
INSERT [dbo].[brands] ([id], [name]) VALUES (5, N'Teva')
INSERT [dbo].[brands] ([id], [name]) VALUES (6, N'Crocs')
INSERT [dbo].[brands] ([id], [name]) VALUES (7, N'Klogs')
INSERT [dbo].[brands] ([id], [name]) VALUES (8, N'Timberland')
SET IDENTITY_INSERT [dbo].[brands] OFF
SET IDENTITY_INSERT [dbo].[brands_stores] ON 

INSERT [dbo].[brands_stores] ([id], [store_id], [brand_id]) VALUES (1, 1, 1)
INSERT [dbo].[brands_stores] ([id], [store_id], [brand_id]) VALUES (2, 1, 5)
INSERT [dbo].[brands_stores] ([id], [store_id], [brand_id]) VALUES (3, 1, 4)
SET IDENTITY_INSERT [dbo].[brands_stores] OFF
SET IDENTITY_INSERT [dbo].[stores] ON 

INSERT [dbo].[stores] ([id], [name]) VALUES (1, N'DSW')
INSERT [dbo].[stores] ([id], [name]) VALUES (2, N' Shoe Wizard')
INSERT [dbo].[stores] ([id], [name]) VALUES (3, N'Keen Garage')
INSERT [dbo].[stores] ([id], [name]) VALUES (4, N'Halo Shoes')
INSERT [dbo].[stores] ([id], [name]) VALUES (5, N'Famous Footware')
INSERT [dbo].[stores] ([id], [name]) VALUES (6, N'Aldo Shoes')
INSERT [dbo].[stores] ([id], [name]) VALUES (7, N'OffBroadway')
INSERT [dbo].[stores] ([id], [name]) VALUES (8, N'RackRoom')
INSERT [dbo].[stores] ([id], [name]) VALUES (9, N'JustFab')
SET IDENTITY_INSERT [dbo].[stores] OFF
