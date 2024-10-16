CREATE TABLE [dbo].[PaymentDestination] (
  [Id] [nvarchar](50) NOT NULL,
  [DesLogo] [nvarchar](250) NULL,
  [DesShortName] [nvarchar](50) NULL,
  [DesName] [nvarchar](250) NULL,
  [DesShortIndex] [int] NULL,
  [ParentId] [nvarchar](50) NULL,
  [IsActive] [bit] NULL,
  CONSTRAINT [PK_PaymentDestination] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO