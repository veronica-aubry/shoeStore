USE [shoe_store_test]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/4/2016 2:26:15 PM ******/
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
/****** Object:  Table [dbo].[stores]    Script Date: 3/4/2016 2:26:15 PM ******/
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
/****** Object:  Table [dbo].[stores_brands]    Script Date: 3/4/2016 2:26:15 PM ******/
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
SET IDENTITY_INSERT [dbo].[stores_brands] ON 

INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (2, 2, 3)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (3, 4, 4)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (5, 6, 10)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (6, 8, 11)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (8, 10, 17)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (9, 12, 18)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (11, 14, 24)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (12, 16, 25)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (14, 18, 31)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (15, 19, 34)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (17, 27, 39)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (18, 27, 40)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (23, 32, 49)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (24, 35, 50)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (25, 39, 54)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (26, 39, 55)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (28, 41, 59)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (29, 41, 60)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (31, 45, 64)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (32, 48, 65)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (39, 56, 79)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (40, 59, 80)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (41, 63, 83)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (42, 63, 84)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (44, 65, 89)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (45, 65, 90)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (47, 68, 94)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (48, 71, 95)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (55, 80, 109)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (60, 89, 119)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (61, 89, 120)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (63, 92, 124)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (64, 95, 125)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (71, 105, 139)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (72, 108, 140)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (76, 113, 149)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (77, 113, 150)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (79, 120, 153)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (80, 122, 154)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (81, 123, 155)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (82, 123, 156)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (84, 125, 162)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (85, 125, 163)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (87, 132, 166)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (88, 134, 167)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (89, 135, 168)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (92, 137, 175)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (93, 137, 176)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (95, 144, 179)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (96, 146, 180)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (97, 147, 183)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (100, 149, 188)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (101, 149, 189)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (103, 154, 192)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (104, 158, 193)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (108, 161, 201)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (109, 161, 202)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (112, 168, 206)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (113, 171, 210)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (114, 171, 211)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (118, 179, 216)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (119, 179, 217)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (121, 181, 220)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (124, 188, 224)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (125, 190, 225)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (126, 191, 226)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (127, 191, 228)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (129, 193, 233)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (130, 193, 234)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (132, 195, 237)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (16, 21, 35)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (20, 29, 44)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (21, 29, 45)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (49, 75, 98)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (50, 75, 99)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (56, 83, 110)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (57, 87, 114)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (58, 87, 115)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (65, 99, 128)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (66, 99, 130)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (33, 51, 67)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (34, 51, 68)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (36, 53, 74)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (37, 53, 75)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (105, 159, 195)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (106, 159, 196)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (116, 173, 214)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (117, 173, 215)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (52, 77, 104)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (53, 77, 105)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (73, 111, 143)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (74, 111, 144)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (111, 166, 205)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (68, 101, 134)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (69, 101, 135)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (90, 135, 170)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (98, 147, 184)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (122, 181, 221)
INSERT [dbo].[stores_brands] ([id], [store_id], [brand_id]) VALUES (133, 197, 238)
GO
SET IDENTITY_INSERT [dbo].[stores_brands] OFF
