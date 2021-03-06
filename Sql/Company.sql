USE [USTaxationDB]
GO
/****** Object:  Table [dbo].[COMPANY]    Script Date: 06-01-2020 10:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[CIty] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPANY_AGGREGATE_DATA]    Script Date: 06-01-2020 10:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_AGGREGATE_DATA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[Jurisdiction] [varchar](50) NULL,
	[Year] [int] NULL,
	[Sales] [decimal](18, 3) NULL,
	[Payroll] [decimal](18, 3) NULL,
	[Property] [decimal](18, 3) NULL,
 CONSTRAINT [PK_COMPANY_AGGREGATE_DATA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[COMPANY_AGGREGATE_DATA] ON 

INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (1, 1, N'Alabama', 2019, CAST(500000.000 AS Decimal(18, 3)), CAST(89717.000 AS Decimal(18, 3)), NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (2, 1, N'Alaska', 2019, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (4, 1, N'Arizona', 2019, NULL, CAST(24212.000 AS Decimal(18, 3)), NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (5, 1, N'Arkansas', 2019, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (6, 1, N'California', 2019, NULL, CAST(3011230.000 AS Decimal(18, 3)), CAST(2235218.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (7, 1, N'Colorado', 2019, NULL, CAST(129465.000 AS Decimal(18, 3)), NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (8, 1, N'Connecticut', 2019, NULL, CAST(2870.000 AS Decimal(18, 3)), NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (9, 1, NULL, 2019, NULL, NULL, NULL)
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (10, 1, N'Delaware', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (11, 1, N'District of Columbia', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (12, 1, N'Florida', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(380853.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (13, 1, N'Georgia', 2019, CAST(2466369.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (14, 1, N'Hawaii', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (15, 1, N'Idaho', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (16, 1, N'Illinois', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (17, 1, N'Indiana', 2019, CAST(4364685.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (18, 1, N'Iowa', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (19, 1, N'Kansas', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (20, 1, N'Kentucky', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (21, 1, N'Louisiana', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (22, 1, N'Maine', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (23, 1, N'Maryland', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (24, 1, N'Massachusetts', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (25, 1, N'Michigan', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (26, 1, N'Minnesota', 2019, CAST(927682.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (27, 1, N'Mississippi', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(52645.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (28, 1, N'Missouri', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (29, 1, N'Montana', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (30, 1, N'Nebraska', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (31, 1, N'Nevada', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (32, 1, N'New Hampshire', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (33, 1, N'New Jersey', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (34, 1, N'New Mexico', 2019, CAST(128164460.000 AS Decimal(18, 3)), CAST(37500.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (35, 1, N'New York', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (36, 1, N'North Carolina', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (37, 1, N'North Dakota', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(193128.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (38, 1, N'Ohio', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(22066.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (39, 1, N'Oklahoma', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (40, 1, N'Oregon', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(68913.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (41, 1, N'Pennsylvania', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (42, 1, N'Rhode Island', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (43, 1, N'South Carolina', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(99323.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (44, 1, N'South Dakota', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (45, 1, N'Tennessee', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (46, 1, N'Texas', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (47, 1, N'Utah', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (48, 1, N'Vermont', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(53775.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (49, 1, N'Virginia', 2019, CAST(1918475.000 AS Decimal(18, 3)), CAST(115273.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (50, 1, N'Washington', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(135977.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (51, 1, N'West Virginia', 2019, CAST(1279895.000 AS Decimal(18, 3)), CAST(38745066.000 AS Decimal(18, 3)), CAST(39578437.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (52, 1, N'Wisconsin', 2019, CAST(0.000 AS Decimal(18, 3)), CAST(321078.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
INSERT [dbo].[COMPANY_AGGREGATE_DATA] ([ID], [CompanyID], [Jurisdiction], [Year], [Sales], [Payroll], [Property]) VALUES (53, 1, N'Wyoming', 2019, CAST(802685.000 AS Decimal(18, 3)), CAST(132612.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)))
SET IDENTITY_INSERT [dbo].[COMPANY_AGGREGATE_DATA] OFF
