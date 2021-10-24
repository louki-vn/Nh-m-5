USE [master]
GO
/****** Object:  Database [THUCTAPNHOMDB2]    Script Date: 10/10/2021 4:21:34 PM ******/
CREATE DATABASE [THUCTAPNHOMDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'THUCTAPNHOMDB2', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.LOUKI\MSSQL\DATA\THUCTAPNHOMDB2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'THUCTAPNHOMDB2_log', FILENAME = N'F:\Microsoft SQL Server\MSSQL15.LOUKI\MSSQL\DATA\THUCTAPNHOMDB2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [THUCTAPNHOMDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET  MULTI_USER 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET QUERY_STORE = OFF
GO
USE [THUCTAPNHOMDB2]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](50) NULL,
	[description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CART]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART](
	[cart_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[member_id] [int] NULL,
	[cart_status] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CART_ITEM]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART_ITEM](
	[cart_item_id] [int] IDENTITY(1,1) NOT NULL,
	[cart_id] [int] NULL,
	[product_id] [int] NULL,
	[qty] [int] NULL,
	[amount] [int] NULL,
	[price] [int] NULL,
	[size] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[category_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBER]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBER](
	[member_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[role] [int] NULL,
	[cart_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[sale_id] [int] NULL,
	[name] [nvarchar](100) NULL,
	[price] [int] NOT NULL,
	[brand] [varchar](50) NULL,
	[sold] [int] NOT NULL,
	[size] [varchar](5) NOT NULL,
	[content] [nvarchar](500) NOT NULL,
	[image_link] [nvarchar](150) NULL,
	[image_list] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_GROUP]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_GROUP](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT](
	[report_id] [int] IDENTITY(1,1) NOT NULL,
	[report_date] [date] NULL,
	[qty] [int] NOT NULL,
	[product_id] [int] NULL,
	[employee_id] [int] NULL,
	[transaction_id] [int] NULL,
	[amount] [int] NOT NULL,
	[member_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALES]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES](
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[sale_name] [nvarchar](50) NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[percent] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSACTION]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSACTION](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [tinyint] NOT NULL,
	[member_id] [int] NULL,
	[member_name] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[payment] [bit] NOT NULL,
	[delivery] [nvarchar](500) NULL,
	[member_phone_number] [varchar](20) NOT NULL,
	[amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BRAND] ON 

INSERT [dbo].[BRAND] ([brand_id], [brand_name], [description]) VALUES (1, N'Chanel', NULL)
INSERT [dbo].[BRAND] ([brand_id], [brand_name], [description]) VALUES (2, N'Dior', NULL)
INSERT [dbo].[BRAND] ([brand_id], [brand_name], [description]) VALUES (3, N'Tiffany & Co.', NULL)
INSERT [dbo].[BRAND] ([brand_id], [brand_name], [description]) VALUES (4, N'Cartier', NULL)
INSERT [dbo].[BRAND] ([brand_id], [brand_name], [description]) VALUES (5, N'Hermes', NULL)
SET IDENTITY_INSERT [dbo].[BRAND] OFF
GO
INSERT [dbo].[CART] ([cart_id], [amount], [member_id], [cart_status]) VALUES (5, 0, 5, N'0')
GO
SET IDENTITY_INSERT [dbo].[CART_ITEM] ON 

INSERT [dbo].[CART_ITEM] ([cart_item_id], [cart_id], [product_id], [qty], [amount], [price], [size]) VALUES (53, 5, 1, 1, NULL, 1, N'S')
INSERT [dbo].[CART_ITEM] ([cart_item_id], [cart_id], [product_id], [qty], [amount], [price], [size]) VALUES (54, 5, 7, 1, NULL, 100, N'S')
INSERT [dbo].[CART_ITEM] ([cart_item_id], [cart_id], [product_id], [qty], [amount], [price], [size]) VALUES (55, 5, 6, 1, NULL, 100, N'S')
INSERT [dbo].[CART_ITEM] ([cart_item_id], [cart_id], [product_id], [qty], [amount], [price], [size]) VALUES (56, 5, 2, 1, NULL, 100, N'S')
SET IDENTITY_INSERT [dbo].[CART_ITEM] OFF
GO
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (2, N'Vòng cổ', 1)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (3, N'Đồng hồ', 1)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (4, N'Vòng tay', 1)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (5, N'Nhẫn', 1)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (6, N'Ví', 2)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (7, N'Dây lưng', 2)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (8, N'Túi xách', 2)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (9, N'Giày', 2)
INSERT [dbo].[CATEGORY] ([category_id], [name], [group_id]) VALUES (10, N'louki', 2)
GO
SET IDENTITY_INSERT [dbo].[MEMBER] ON 

INSERT [dbo].[MEMBER] ([member_id], [username], [name], [password], [phone_number], [address], [role], [cart_id]) VALUES (1, N'louki@gmail.com', N'louki', N'0a015aa041aca628c3e28cd407ea9fbf', N'0', N'0', 0, 1)
INSERT [dbo].[MEMBER] ([member_id], [username], [name], [password], [phone_number], [address], [role], [cart_id]) VALUES (2, N'hieu@gmail.com', N'hieu', N'0a015aa041aca628c3e28cd407ea9fbf', N'2', N'2', 1, 2)
INSERT [dbo].[MEMBER] ([member_id], [username], [name], [password], [phone_number], [address], [role], [cart_id]) VALUES (5, N'hieu7apro@gmail.com', N'hieu nguyen', N'0a015aa041aca628c3e28cd407ea9fbf', N'+84962761171', N'236 Hoàng Quốc Việt, Cổ Nhuế', 2, 5)
INSERT [dbo].[MEMBER] ([member_id], [username], [name], [password], [phone_number], [address], [role], [cart_id]) VALUES (10, N'hieu7apro@gmail.com', N'', N'c81e728d9d4c2f636f067f89cc14862c', N'', N'', 2, 10)
SET IDENTITY_INSERT [dbo].[MEMBER] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([product_id], [category_id], [sale_id], [name], [price], [brand], [sold], [size], [content], [image_link], [image_list]) VALUES (1, 4, 1, N'Túi xách', 1, N'Dior', 0, N'1', N'', N'/Asset/Images/RWG2eG.jpg', N'')
INSERT [dbo].[PRODUCT] ([product_id], [category_id], [sale_id], [name], [price], [brand], [sold], [size], [content], [image_link], [image_list]) VALUES (2, 8, 1, N'Túi đựng laptop', 100, N'Hermes', 2, N'1', N'', N'/Asset/Images/RWG2eG.jpg', N'')
INSERT [dbo].[PRODUCT] ([product_id], [category_id], [sale_id], [name], [price], [brand], [sold], [size], [content], [image_link], [image_list]) VALUES (6, 4, 1, N'Vòng tay', 100, N'Tiffany & Co.', 0, N'2', N'', N'/Asset/Images/logo-1.jpg', N'')
INSERT [dbo].[PRODUCT] ([product_id], [category_id], [sale_id], [name], [price], [brand], [sold], [size], [content], [image_link], [image_list]) VALUES (7, 2, 1, N'DataCamp', 100, N'Chanel', 0, N'2', N'', N'/Asset/Images/logo-1.jpg', N'')
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_GROUP] ON 

INSERT [dbo].[PRODUCT_GROUP] ([group_id], [group_name]) VALUES (1, N'Trang sức')
INSERT [dbo].[PRODUCT_GROUP] ([group_id], [group_name]) VALUES (2, N'Đồ da')
SET IDENTITY_INSERT [dbo].[PRODUCT_GROUP] OFF
GO
SET IDENTITY_INSERT [dbo].[REPORT] ON 

INSERT [dbo].[REPORT] ([report_id], [report_date], [qty], [product_id], [employee_id], [transaction_id], [amount], [member_id]) VALUES (1, CAST(N'2021-09-20' AS Date), 1, 2, 2, 1, 1, 10)
INSERT [dbo].[REPORT] ([report_id], [report_date], [qty], [product_id], [employee_id], [transaction_id], [amount], [member_id]) VALUES (2, CAST(N'2021-10-01' AS Date), 2, 2, 2, 2, 1, 2)
INSERT [dbo].[REPORT] ([report_id], [report_date], [qty], [product_id], [employee_id], [transaction_id], [amount], [member_id]) VALUES (3, CAST(N'2021-10-01' AS Date), 5, 5, 2, 3, 5, 5)
INSERT [dbo].[REPORT] ([report_id], [report_date], [qty], [product_id], [employee_id], [transaction_id], [amount], [member_id]) VALUES (4, CAST(N'2021-10-01' AS Date), 2, 2, 2, 4, 2, 2)
SET IDENTITY_INSERT [dbo].[REPORT] OFF
GO
SET IDENTITY_INSERT [dbo].[SALES] ON 

INSERT [dbo].[SALES] ([sale_id], [sale_name], [begin_date], [end_date], [percent]) VALUES (1, N'Không giảm', NULL, NULL, 0)
INSERT [dbo].[SALES] ([sale_id], [sale_name], [begin_date], [end_date], [percent]) VALUES (2, N'Giảm 10%', NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[SALES] OFF
GO
SET IDENTITY_INSERT [dbo].[TRANSACTION] ON 

INSERT [dbo].[TRANSACTION] ([transaction_id], [status], [member_id], [member_name], [product_id], [qty], [payment], [delivery], [member_phone_number], [amount]) VALUES (1, 3, 10, N'10', 2, 1, 1, N'1', N'1', 1)
INSERT [dbo].[TRANSACTION] ([transaction_id], [status], [member_id], [member_name], [product_id], [qty], [payment], [delivery], [member_phone_number], [amount]) VALUES (2, 3, 2, N'2', 2, 2, 1, N'1', N'1', 1)
INSERT [dbo].[TRANSACTION] ([transaction_id], [status], [member_id], [member_name], [product_id], [qty], [payment], [delivery], [member_phone_number], [amount]) VALUES (3, 3, 5, N'5', 5, 5, 1, N'5', N'5', 5)
INSERT [dbo].[TRANSACTION] ([transaction_id], [status], [member_id], [member_name], [product_id], [qty], [payment], [delivery], [member_phone_number], [amount]) VALUES (4, 3, 2, N'2', 2, 2, 1, N'2', N'2', 2)
SET IDENTITY_INSERT [dbo].[TRANSACTION] OFF
GO
ALTER TABLE [dbo].[MEMBER] ADD  DEFAULT ((2)) FOR [role]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  DEFAULT ((1)) FOR [sale_id]
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[MEMBER] ([member_id])
GO
ALTER TABLE [dbo].[CART_ITEM]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[CART] ([cart_id])
GO
ALTER TABLE [dbo].[CART_ITEM]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[PRODUCT] ([product_id])
GO
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[PRODUCT_GROUP] ([group_id])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[CATEGORY] ([category_id])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([sale_id])
REFERENCES [dbo].[SALES] ([sale_id])
GO
ALTER TABLE [dbo].[REPORT]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[MEMBER] ([member_id])
GO
ALTER TABLE [dbo].[TRANSACTION]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[MEMBER] ([member_id])
GO
/****** Object:  StoredProcedure [dbo].[AddCategory]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddCategory]
@id int,
@name varchar(50),
@group_id int
AS 
BEGIN
	insert into CATEGORY(category_id, name, group_id)
	values(@id, @name, @group_id)
END
GO
/****** Object:  StoredProcedure [dbo].[AddMember]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddMember]
@name nvarchar(50),
@username varchar(50),
@password varchar(50), 
@address nvarchar(100), 
@phone varchar(20)
AS 
BEGIN
	insert into MEMBER(name, username, password, address, phone_number)
	values(@name, @username, @password, @address, @phone)
END
GO
/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[AddProduct]
@name nvarchar(50),
@category_id int, 
@sale_id int,
@price int, 
@brand varchar(50),
@sold int, 
@size varchar(5),
@content nvarchar(500),
@image_link varchar(50), 
@image_list varchar(500)
AS
BEGIN
	insert into PRODUCT(name, category_id, sale_id, price, brand, sold, size, content, image_link, image_list)
	values(@name, @category_id, @sale_id, @price, @brand, @sold, @size, @content, @image_link, @image_list)
END
GO
/****** Object:  StoredProcedure [dbo].[AddReport]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddReport]
@tran_id int,
@employee_id int,
@mem_id int,
@amount int,
@qty int,
@product_id int, 
@date date
AS 
BEGIN
	insert into REPORT(transaction_id, employee_id, member_id, amount, qty, product_id, report_date)
	values(@tran_id, @employee_id, @mem_id, @amount, @qty, @product_id, @date)
END
GO
/****** Object:  StoredProcedure [dbo].[CheckMember]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[CheckMember]
@username varchar(50),
@password varchar(50)
AS
BEGIN
	select *
	from dbo.MEMBER 
	where username = @username and password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[CheckMemberExist]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckMemberExist]
@username varchar(50)
AS
BEGIN
	select username
	from dbo.MEMBER 
	where username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[CheckProductInCart]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckProductInCart] 
@cart_id int,
@product_id int,
@size varchar(5)
AS
BEGIN
	Select *
	from CART_ITEM
	where cart_id = @cart_id and product_id = @product_id and size = @size
END 
GO
/****** Object:  StoredProcedure [dbo].[CheckReport]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckReport]
@tran_id int
AS
BEGIN
	select *
	from REPORT
	where transaction_id = @tran_id
END
GO
/****** Object:  StoredProcedure [dbo].[create_CART_ITEM]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[create_CART_ITEM] 
	@cart_id INT,
	@product_id INT,
	@qty INT,
	@price FLOAT,
	@size VARCHAR(5)
AS
BEGIN
	INSERT INTO CART_ITEM(cart_id, product_id, qty, price, size)
	VALUES (@cart_id, @product_id, @qty, @price, @size)
END
GO
/****** Object:  StoredProcedure [dbo].[create_TRANSACTION]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[create_TRANSACTION]
	@status INT,
	@member_id INT,
	@member_name NVARCHAR(50),
	@payment BIT,
	@delivery NVARCHAR(500),
	@member_phone_number VARCHAR(20),
	@amount INT
AS
BEGIN
	INSERT INTO [TRANSACTION](status, member_id, member_name, payment, delivery, member_phone_number, amount)
	VALUES (@status,@member_id,@member_name,@payment, @delivery, @member_phone_number, @amount)
END
GO
/****** Object:  StoredProcedure [dbo].[createaccount]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[createaccount]
	@username VARCHAR(50),	
	@name NVARCHAR(50),
	@password VARCHAR(50),
	@phone VARCHAR(20),
	@address NVARCHAR(100)
AS
BEGIN
insert INTO MEMBER VALUES (@username, @name, @password, @phone, @address,2,1000)
END
GO
/****** Object:  StoredProcedure [dbo].[delete_CART_ITEM_from_cart_item_id]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[delete_CART_ITEM_from_cart_item_id]
	@cart_item_id INT
AS
BEGIN
	DELETE FROM CART_ITEM WHERE cart_item_id = @cart_item_id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[DeleteCategory]
@id int
as
BEGIN
	Delete from CATEGORY
	where category_id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteMember]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteMember]
@id int
AS
BEGIN
	delete from CART where member_id = @id
	delete from MEMBER where member_id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteProduct]
@id int
AS 
BEGIN
	delete from PRODUCT where product_id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[EditCategory]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[EditCategory]
@id int,
@name nvarchar(50)
AS
BEGIN
	Update  CATEGORY 
	SET name = @name
	Where category_id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[EditProduct]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditProduct]
@id int,
@name nvarchar(100),
@size varchar(5),
@price int,
@content nvarchar(500),
@sale int
AS
BEGIN
	update PRODUCT
	set name = @name, size = @size, content = @content, price = @price, sale_id = @sale
	Where product_id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[FilterCategory]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[FilterCategory]
@type int
AS 
BEGIN
	select *
	from CATEGORY
	where group_id = @type
END
GO
/****** Object:  StoredProcedure [dbo].[FilterMember]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[FilterMember]
@id int
as
BEGIN
	SELECT *
	from MEMBER
	where role = @id
END
GO
/****** Object:  StoredProcedure [dbo].[FilterProduct]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[FilterProduct]
@type int
AS 
BEGIN
	select *
	from PRODUCT
	where category_id = @type
END
GO
/****** Object:  StoredProcedure [dbo].[FilterTransaction]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[FilterTransaction]
@type int
AS 
BEGIN
	select *
	from [TRANSACTION]
	where status = @type
END
GO
/****** Object:  StoredProcedure [dbo].[get_all_from_SALES]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_all_from_SALES]
AS
BEGIN
	SELECT sale_id, sale_name, begin_date, end_date, [percent] FROM SALES
END
GO
/****** Object:  StoredProcedure [dbo].[get_CART_ITEM_from_cart_id]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[get_CART_ITEM_from_cart_id]
	@cart_id INT
AS
BEGIN
	SELECT cart_item_id,cart_id, product_id, qty, price, size, amount FROM CART_ITEM WHERE cart_id = @cart_id
END
GO
/****** Object:  StoredProcedure [dbo].[get_CART_ITEM_from_cart_id_and_product_id]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[get_CART_ITEM_from_cart_id_and_product_id]
	@cart_id INT,
	@product_id INT
AS
BEGIN
	SELECT cart_item_id,cart_id, product_id, qty, price, size, amount FROM CART_ITEM WHERE cart_id = @cart_id AND product_id = @product_id
END
GO
/****** Object:  StoredProcedure [dbo].[get_MEMBER_from_username]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[get_MEMBER_from_username]
	@username NVARCHAR(50)
AS 
BEGIN
SELECT member_id, username, [password], name, phone_number, [address], [role], cart_id  from MEMBER where @username = username
END
GO
/****** Object:  StoredProcedure [dbo].[get_product_base_on_brand]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_product_base_on_brand]
	@brand varchar(50)
AS
BEGIN
	SELECT product_id, a.category_id,sale_id,a.name, price, brand,sold,size,[content], image_link, image_list 
	FROM PRODUCT AS a
	where a.brand like @brand
END
GO
/****** Object:  StoredProcedure [dbo].[get_product_base_on_price]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[get_product_base_on_price]
	@along INT
AS
BEGIN
	DECLARE @start INT, @end INT
	IF	@along = 1
	BEGIN
		SET @start = 1000000
		SET @end = 5000000
	END
	IF	@along = 2
	BEGIN
		SET @start = 5000000
		SET @end = 10000000
	END
	IF	@along = 3
	BEGIN
		SET @start = 10000000
		SET @end = 15000000
	END
	IF	@along = 4
	BEGIN
		SET @start = 15000000
		SET @end = 50000000
	END
	SELECT product_id, a.category_id,sale_id,a.name, price, brand,sold,size,[content], image_link, image_list 
	FROM PRODUCT AS a
	where a.price > @start AND a.price <@end
END
GO
/****** Object:  StoredProcedure [dbo].[get_product_from_CATEGORY]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_product_from_CATEGORY]
	@name nvarchar(50)
AS
BEGIN
	SELECT product_id, a.category_id,sale_id,a.name, price, brand,sold,size,[content], image_link, image_list 
	FROM PRODUCT AS a
	INNER JOIN CATEGORY AS b ON a.category_id = b.category_id
	where b.name = @name
END
GO
/****** Object:  StoredProcedure [dbo].[get_PRODUCT_from_key_word]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_PRODUCT_from_key_word]
	@key_word NVARCHAR(50)
AS 
BEGIN
	SELECT product_id, a.category_id,sale_id,a.name, price, brand,sold,size,[content], image_link, image_list 
	FROM PRODUCT AS a
	WHERE a.name like '%' + @key_word + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[get_product_from_PRODUCT_GROUP]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[get_product_from_PRODUCT_GROUP]
	@group_id int
AS
BEGIN
	SELECT product_id, a.category_id,sale_id,a.name, price, brand,sold,size,[content], image_link, image_list 
	FROM PRODUCT AS a
	INNER JOIN CATEGORY AS b ON a.category_id = b.category_id
	INNER JOIN PRODUCT_GROUP AS c ON b.group_id = c.group_id
	where c.group_id = @group_id
END
GO
/****** Object:  StoredProcedure [dbo].[get_PRODUCT_from_product_id]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_PRODUCT_from_product_id]
	@product_id INT
AS
BEGIN
	SELECT product_id, category_id,sale_id,name, price, brand,sold,size,[content], image_link, image_list FROM PRODUCT WHERE product_id = @product_id
END
GO
/****** Object:  StoredProcedure [dbo].[getMEMBERfromusername]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[getMEMBERfromusername]
	@username NVARCHAR(50)
AS 
BEGIN
SELECT member_id, username, [password], name, phone_number, [address], [role], cart_id  from MEMBER where @username = username
END
GO
/****** Object:  StoredProcedure [dbo].[getMEMBERfromusernameandpass]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[getMEMBERfromusernameandpass]
	@username VARCHAR(50), 
	@pass VARCHAR(50)
AS 
BEGIN
SELECT member_id, username, [password], name, phone_number, [address], [role], cart_id  from MEMBER where @username = username and @pass = [password]
END
GO
/****** Object:  StoredProcedure [dbo].[remove_all_CART_ITEM]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[remove_all_CART_ITEM]
AS
BEGIN
	DELETE FROM CART_ITEM
END
GO
/****** Object:  StoredProcedure [dbo].[remove_CART_ITEM_from_product_id]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[remove_CART_ITEM_from_product_id]
	@product_id INT
AS
BEGIN
	DELETE FROM CART_ITEM WHERE product_id = @product_id
END
GO
/****** Object:  StoredProcedure [dbo].[remove_CART_ITEM_from_product_id_and_size]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[remove_CART_ITEM_from_product_id_and_size]
	@product_id INT, 
	@size varchar(5)
AS
BEGIN
	DELETE FROM CART_ITEM WHERE product_id = @product_id and size = @size
END
GO
/****** Object:  StoredProcedure [dbo].[selectallfromMEMBER]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[selectallfromMEMBER]
AS 
BEGIN
	SELECT * FROM MEMBER
END

GO
/****** Object:  StoredProcedure [dbo].[selectallfromPRODUCT]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[selectallfromPRODUCT]
AS
BEGIN
	SELECT product_id, category_id, sale_id,name,price,brand,sold,size,[content],image_link,image_list  FROM PRODUCT
END

GO
/****** Object:  StoredProcedure [dbo].[SelectCompleteOrder]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectCompleteOrder]
AS 
BEGIN
	SELECT * 
	FROM [TRANSACTION]
	Where status = '3'
END

GO
/****** Object:  StoredProcedure [dbo].[SelectTopMember]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectTopMember]
AS 
BEGIN
	SELECT TOP 5 m.member_id, m.name, m.username, m.phone_number, m.address, m.cart_id, c.amount 
	FROM MEMBER m
	inner join CART c on c.member_id = m.member_id
	Order by amount desc
END

GO
/****** Object:  StoredProcedure [dbo].[SelectTopProduct]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectTopProduct]
AS 
BEGIN
	SELECT TOP 5 * 
	FROM PRODUCT
	Order by sold desc
END

GO
/****** Object:  StoredProcedure [dbo].[update_MEMBER_information]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[update_MEMBER_information]
	@member_id int,
	@name NVARCHAR(50),
	@phone_number VARCHAR(20),
	@address NVARCHAR(100)
AS
BEGIN
	UPDATE MEMBER SET name = @name, phone_number = @phone_number, address = @address WHERE member_id = @member_id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNumberProductInCartItem]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[UpdateNumberProductInCartItem]
@cart_id int, 
@product_id int, 
@size varchar(5)
AS
BEGIN
	update CART_ITEM
	set qty = qty +1 
	where cart_id = @cart_id and product_id = @product_id and size = @size
END 
GO
/****** Object:  StoredProcedure [dbo].[UpdateNumberProductIntCartItem]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[UpdateNumberProductIntCartItem]
@cart_id int, 
@product_id int, 
@size varchar(5)
AS
BEGIN
	update CART_ITEM
	set qty = qty +1 
	where cart_id = @cart_id and product_id = @product_id and size = @size
END 
GO
/****** Object:  StoredProcedure [dbo].[UpdateTransactionStatus]    Script Date: 10/10/2021 4:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateTransactionStatus]
@id int,
@status int
AS
BEGIN
	update [TRANSACTION] set status = 1 
	where transaction_id = @id
END
GO
USE [master]
GO
ALTER DATABASE [THUCTAPNHOMDB2] SET  READ_WRITE 
GO
