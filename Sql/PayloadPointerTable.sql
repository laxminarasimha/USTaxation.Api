/****** Object:  Table [dbo].[PayloadPointers]    Script Date: 28/12/2019 01:18:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PayloadPointers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pointer] [varchar](50) NOT NULL,
	[Payload] [varchar](500) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserPayload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


