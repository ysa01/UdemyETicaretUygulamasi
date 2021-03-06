USE [UdemyETicaretDB41]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[AdresDescription] [nvarchar](300) NULL,
	[Member_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Name] [nvarchar](300) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Parent_Id] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[AddedDate] [datetime] NULL,
	[ModifedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[Surname] [nvarchar](25) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Password] [nvarchar](60) NOT NULL,
	[Bio] [nvarchar](300) NULL,
	[ProfileImageName] [nvarchar](250) NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[MemberType] [int] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageReplies]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageReplies](
	[Id] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](300) NOT NULL,
	[MessageId] [uniqueidentifier] NOT NULL,
	[Member_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_MessageReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [uniqueidentifier] NOT NULL,
	[Subject] [nvarchar](60) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ToMemberId] [int] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [tinyint] NOT NULL,
	[Order_Id] [uniqueidentifier] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Status] [nchar](10) NULL,
	[Description] [nvarchar](250) NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3.05.2019 15:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[IsContinued] [bit] NOT NULL,
	[StarPoint] [int] NOT NULL,
	[StarGivenMemberCount] [int] NOT NULL,
	[ProductImageName] [nvarchar](250) NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Category_Id] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Parent_Id], [Description], [AddedDate], [ModifedDate], [IsDeleted]) VALUES (4, N'Elektronik', NULL, NULL, CAST(N'2019-03-28T21:52:36.090' AS DateTime), CAST(N'2019-03-28T21:52:36.090' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [Parent_Id], [Description], [AddedDate], [ModifedDate], [IsDeleted]) VALUES (5, N'Giyim', NULL, NULL, CAST(N'2019-03-28T21:52:45.980' AS DateTime), CAST(N'2019-03-28T21:52:45.980' AS DateTime), 0)
INSERT [dbo].[Categories] ([Id], [Name], [Parent_Id], [Description], [AddedDate], [ModifedDate], [IsDeleted]) VALUES (6, N'Telefon', 4, NULL, CAST(N'2019-03-28T21:52:54.700' AS DateTime), CAST(N'2019-03-28T21:52:54.700' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Text], [Member_Id], [Product_Id], [AddedDate], [ModifiedDate]) VALUES (1, N'örnek yorum', 1, 1, CAST(N'2019-03-28T22:12:48.253' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([Id], [Name], [Surname], [Email], [Password], [Bio], [ProfileImageName], [AddedDate], [ModifiedDate], [MemberType]) VALUES (1, N'fatih', N'gürdal', N'f.gurdal@hotmail.com.tr', N'123456', N'örnek', N'images/upload/ea2f40e4-b675-419e-8f28-a0c25f192387.jpg', CAST(N'2019-03-28T21:39:16.187' AS DateTime), CAST(N'2019-03-28T22:29:29.307' AS DateTime), 10)
SET IDENTITY_INSERT [dbo].[Members] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [IsContinued], [StarPoint], [StarGivenMemberCount], [ProductImageName], [UnitsInStock], [AddedDate], [ModifiedDate], [Category_Id], [IsDeleted]) VALUES (1, N'iphone 5s', N'iphone telefon', CAST(100.00 AS Decimal(8, 2)), 1, 0, 0, N'images/upload/Product/068d3b13-dd8b-4791-8fbb-907bffa84595.jpg', 100, CAST(N'2019-03-28T22:12:16.313' AS DateTime), NULL, 6, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Members]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([Parent_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Members]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[MessageReplies]  WITH CHECK ADD  CONSTRAINT [FK_MessageReplies_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[MessageReplies] CHECK CONSTRAINT [FK_MessageReplies_Members]
GO
ALTER TABLE [dbo].[MessageReplies]  WITH CHECK ADD  CONSTRAINT [FK_MessageReplies_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
GO
ALTER TABLE [dbo].[MessageReplies] CHECK CONSTRAINT [FK_MessageReplies_Messages]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Members]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
