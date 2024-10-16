CREATE TABLE [dbo].[PaymentTransaction] (
  [Id] [nvarchar](50) NOT NULL,
  [TranMsg] [nvarchar](250) NULL,
  [TranPayload] [nvarchar](500) NULL,
  [TranStatus] [nvarchar](10) NULL,
  [TranAmount] [decimal](19, 2) NULL,
  [TranDate] [datetime] NULL,
  [PaymentId] [nvarchar](50) NULL,
  CONSTRAINT [PK_PaymentTransaction] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO