USE [shoe_store]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/4/2016 2:11:33 PM ******/
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
/****** Object:  Table [dbo].[stores]    Script Date: 3/4/2016 2:11:33 PM ******/
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
/****** Object:  Table [dbo].[stores_brands]    Script Date: 3/4/2016 2:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stores_brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NULL,
	[brand_id] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([id], [name]) VALUES (1, N'Soda')
INSERT [dbo].[brands] ([id], [name]) VALUES (2, N'Steve Madden')
INSERT [dbo].[brands] ([id], [name]) VALUES (3, N'Nike')
INSERT [dbo].[brands] ([id], [name]) VALUES (4, N'New Balance')
INSERT [dbo].[brands] ([id], [name]) VALUES (5, N'Aldo')
INSERT [dbo].[brands] ([id], [name]) VALUES (6, N'Dirty Laundy')
INSERT [dbo].[brands] ([id], [name]) VALUES (7, N'BCB Generation')
INSERT [dbo].[brands] ([id], [name]) VALUES (8, N'Timberland')
INSERT [dbo].[brands] ([id], [name]) VALUES (9, N'Teva')
INSERT [dbo].[brands] ([id], [name]) VALUES (10, N'Anne Klein')
INSERT [dbo].[brands] ([id], [name]) VALUES (11, N'Sketchers')
INSERT [dbo].[brands] ([id], [name]) VALUES (12, N'Crocs')
INSERT [dbo].[brands] ([id], [name]) VALUES (13, N'Aerosoles')
INSERT [dbo].[brands] ([id], [name]) VALUES (14, N'Rocket Dog')
INSERT [dbo].[brands] ([id], [name]) VALUES (15, N'Klogs')
INSERT [dbo].[brands] ([id], [name]) VALUES (16, N'XOXO')
SET IDENTITY_INSERT [dbo].[brands] OFF
SET IDENTITY_INSERT [dbo].[stores] ON 

INSERT [dbo].[stores] ([id], [name]) VALUES (2, N'DSW')
INSERT [dbo].[stores] ([id], [name]) VALUES (3, N'Shoe Wizard')
INSERT [dbo].[stores] ([id], [name]) VALUES (4, N'Keen Garage')
INSERT [dbo].[stores] ([id], [name]) VALUES (5, N'Halo Shoes')
INSERT [dbo].[stores] ([id], [name]) VALUES (6, N'Famous Footware')
INSERT [dbo].[stores] ([id], [name]) VALUES (7, N'Aldo Shoes')
INSERT [dbo].[stores] ([id], [name]) VALUES (8, N'OffBroadway')
INSERT [dbo].[stores] ([id], [name]) VALUES (9, N'RackRoom')
INSERT [dbo].[stores] ([id], [name]) VALUES (10, N'JustFab')
INSERT [dbo].[stores] ([id], [name]) VALUES (11, N'Shoe Carnival')
INSERT [dbo].[stores] ([id], [name]) VALUES (12, N'Payless')
INSERT [dbo].[stores] ([id], [name]) VALUES (13, N'Zappos')
INSERT [dbo].[stores] ([id], [name]) VALUES (14, N'Sketchers')
SET IDENTITY_INSERT [dbo].[stores] OFF
SET IDENTITY_INSERT [dbo].[stores_brands] ON 

INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (1, 1, 1)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (2, 1, 1)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (3, 1, 2)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (4, 2, 1)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (5, 2, 2)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (6, 2, 3)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (7, 3, 3)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (8, 13, 1)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (9, 13, 10)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (10, 13, 11)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (11, 13, 13)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (12, 6, 7)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (13, 6, 6)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (14, 6, 11)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (15, 6, 5)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (16, 7, 5)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (17, 14, 11)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (18, 3, 4)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (19, 3, 14)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (20, 3, 15)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (21, 3, 8)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (22, 3, 9)
SET IDENTITY_INSERT [dbo].[stores_brands] OFF
