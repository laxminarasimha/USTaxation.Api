USE [USTaxationDB]
GO
/****** Object:  Table [dbo].[StateTax]    Script Date: 06-01-2020 13:11:49 ******/
DROP TABLE [dbo].[StateTax]
GO
/****** Object:  Table [dbo].[CorporateTax]    Script Date: 06-01-2020 13:11:49 ******/
DROP TABLE [dbo].[CorporateTax]
GO
/****** Object:  Table [dbo].[COMPANY]    Script Date: 06-01-2020 13:11:49 ******/
DROP TABLE [dbo].[COMPANY]
GO
/****** Object:  Table [dbo].[COMPANY]    Script Date: 06-01-2020 13:11:49 ******/
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
/****** Object:  Table [dbo].[CorporateTax]    Script Date: 06-01-2020 13:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorporateTax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Jurisdiction] [varchar](100) NULL,
	[Year] [int] NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_CorporateTax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateTax]    Script Date: 06-01-2020 13:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateTax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Jurisdiction] [varchar](100) NULL,
	[Year] [int] NULL,
	[AdjRule] [varchar](500) NULL,
	[Factor] [float] NULL,
 CONSTRAINT [PK_StateTax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[COMPANY] ON 

INSERT [dbo].[COMPANY] ([ID], [Name], [Address1], [Address2], [CIty], [State], [Country]) VALUES (1, N'ABC Corporation', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY] ([ID], [Name], [Address1], [Address2], [CIty], [State], [Country]) VALUES (2, N'XYZ Corp', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[COMPANY] ([ID], [Name], [Address1], [Address2], [CIty], [State], [Country]) VALUES (3, N'DBAce Technologies', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[COMPANY] OFF
SET IDENTITY_INSERT [dbo].[CorporateTax] ON 

INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (1, N'Alabama', 2019, 6.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (2, N'Alaska', 2019, 9.4)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (3, N'Arizona', 2019, 6.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (4, N'Arkansas', 2019, 6.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (5, N'California', 2019, 8.84)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (6, N'Colorado', 2019, 4.63)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (7, N'Connecticut', 2019, 7.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (8, N'Delaware', 2019, 8.7)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (9, N'District of Columbia', 2019, 9.975)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (10, N'Florida', 2019, 5.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (11, N'Georgia', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (12, N'Hawaii', 2019, 6.4)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (13, N'Idaho', 2019, 7.4)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (14, N'Illinois', 2019, 9.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (15, N'Indiana', 2019, 8)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (16, N'Iowa', 2019, 12)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (17, N'Kansas', 2019, 4)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (18, N'Kentucky', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (19, N'Louisiana', 2019, 8)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (20, N'Maine', 2019, 8.93)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (21, N'Maryland', 2019, 8.25)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (22, N'Massachusetts', 2019, 8)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (23, N'Michigan', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (24, N'Minnesota', 2019, 9.8)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (25, N'Mississippi', 2019, 5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (26, N'Missouri', 2019, 6.25)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (27, N'Montana', 2019, 6.75)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (28, N'Nebraska', 2019, 7.81)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (29, N'Nevada', 2019, 0)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (30, N'New Hampshire', 2019, 8.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (31, N'New Jersey', 2019, 9)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (32, N'New Mexico', 2019, 7.3)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (33, N'New York', 2019, 7.1)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (34, N'North Carolina', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (35, N'North Dakota', 2019, 4.53)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (36, N'Ohio', 2019, 0)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (37, N'Oklahoma', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (38, N'Oregon', 2019, 7.6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (39, N'Pennsylvania', 2019, 9.99)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (40, N'Rhode Island', 2019, 9)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (41, N'South Carolina', 2019, 5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (42, N'South Dakota', 2019, 0)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (43, N'Tennessee', 2019, 6.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (44, N'Texas', 2019, 0)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (45, N'Utah', 2019, 5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (46, N'Vermont', 2019, 8.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (47, N'Virginia', 2019, 6)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (48, N'Washington', 2019, 0)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (49, N'West Virginia', 2019, 6.5)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (50, N'Wisconsin', 2019, 7.9)
INSERT [dbo].[CorporateTax] ([Id], [Jurisdiction], [Year], [Rate]) VALUES (51, N'Wyoming', 2019, 0)
SET IDENTITY_INSERT [dbo].[CorporateTax] OFF
SET IDENTITY_INSERT [dbo].[StateTax] ON 

INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (1, N'Alaska', 2019, N'3 Factor', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (2, N'Arizona', 2019, N'Sales/Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (3, N'Arkansas', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (4, N'California', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (5, N'Colorado', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (6, N'Connecticut', 2019, N'Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (7, N'Delaware', 2019, N'75% Sales, 12.5% Property &  12.5% Payroll ', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (8, N'District of Columbia', 2019, N'', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (9, N'Florida', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (10, N'Georgia', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (11, N'Hawaii', 2019, N'3 Factor', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (12, N'Idaho', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (13, N'Illinois', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (14, N'Indiana', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (15, N'Iowa', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (16, N'Kansas', 2019, N'3 Factor', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (17, N'Kentucky', 2019, N'Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (18, N'Louisiana', 2019, N'Sales', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (19, N'Maine', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (20, N'Maryland', 2019, N'66.6% Sales, 16.6% Property & 16.6%Payroll', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (21, N'Massachusetts', 2019, N'Sales/Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (22, N'Michigan', 2019, N'Sales/Double wtd Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (23, N'Minnesota', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (24, N'Mississippi', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (25, N'Missouri', 2019, N'Sales/Other (1)', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (26, N'Montana', 2019, N'3 Factor/Sales', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (27, N'Nebraska', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (28, N'Nevada', 2019, N'No State Income Tax', 0)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (29, N'New Hampshire', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (30, N'New Jersey', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (31, N'New Mexico', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (32, N'New York', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (33, N'North Carolina', 2019, N'Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (34, N'North Dakota', 2019, N'3 Factor/Sales', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (35, N'Ohio', 2019, N'N/A (2)', 0)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (36, N'Oklahoma', 2019, N'3 Factor', 3)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (37, N'Oregon', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (38, N'Pennsylvania', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (39, N'Rhode Island', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (40, N'South Carolina', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (41, N'South Dakota', 2019, N'No State Income Tax', 0)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (42, N'Tennessee', 2019, N'Triple wtd Sales', 5)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (43, N'Texas', 2019, N'Sales', 0)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (44, N'Utah', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (45, N'Vermont', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (46, N'Virginia', 2019, N'Double wtd Sales/Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (47, N'Washington', 2019, N'No State Income Tax', 0)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (48, N'West Virginia', 2019, N'Double wtd Sales', 4)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (49, N'Wisconsin', 2019, N'Sales', 1)
INSERT [dbo].[StateTax] ([Id], [Jurisdiction], [Year], [AdjRule], [Factor]) VALUES (50, N'Wyoming', 2019, N'No State Income Tax', 0)
SET IDENTITY_INSERT [dbo].[StateTax] OFF
