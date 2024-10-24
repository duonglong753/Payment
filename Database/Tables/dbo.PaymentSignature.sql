CREATE TABLE [dbo].[PaymentSignature] (
  [Id] [nvarchar](50) NOT NULL,
  [SignValue] [nvarchar](500) NULL,
  [SignAlgo] [nvarchar](50) NULL,
  [SignDate] [datetime] NULL,
  [SignOwn] [nvarchar](50) NULL,
  [PaymentId] [nvarchar](50) NULL,
  [IsValid] [bit] NULL,
  CONSTRAINT [PK_PaymentSignature] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PaymentSignature]
  ADD CONSTRAINT [FK_PaymentSignature_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[Payment] ([Id])
GO