CREATE TABLE [dbo].[PaymentSignature] (
  [Id] [nvarchar](50) NOT NULL,
  [SignValue] [nvarchar](500) NULL,
  [SignAlgo] [nvarchar](50) NULL,
  [SignDate] [datetime] NULL,
  [SignOwn] [nvarchar](50) NULL,
  [PaymentId] [nvarchar](50) NULL,
  CONSTRAINT [PK_PaymentSignature] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO