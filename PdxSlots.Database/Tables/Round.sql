﻿CREATE TABLE [dbo].[Round]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[SessionId] NVARCHAR(55) NOT NULL,
	[ExternalOperatorId] NVARCHAR(55) NOT NULL,
	[ExternalGameId] NVARCHAR(55) NOT NULL,
	[OperatorId] INT NOT NULL,
	[GameId] INT NOT NULL,
	[Wager] DECIMAL(10,0) NOT NULL,
	[Denomination] DECIMAL(10,2) NOT NULL,
	[WagerCurrency] DECIMAL(10,2) NOT NULL,
	[WagerDetail] NVARCHAR(MAX) NULL,
	[NonWager] DECIMAL(10,2) NOT NULL DEFAULT 0,
	[NonWagerDetail] NVARCHAR(MAX) NULL,
	[ProgressiveWin] DECIMAL(10,2) NOT NULL DEFAULT 0,
	[ProgressiveWinCont] DECIMAL(10,2) NOT NULL DEFAULT 0,
	[IncentiveWager] DECIMAL(10,2) NOT NULL DEFAULT 0,
	[IncentiveWagerDetail] NVARCHAR(MAX) NULL,
	[IncentiveWin] DECIMAL(10,2) NOT NULL DEFAULT 0,
	[Win] DECIMAL(10,0) NOT NULL,
	[WinCurrency] DECIMAL(10,2) NOT NULL,
	[PayTable] NVARCHAR(55) NOT NULL,
	[WalletApprovalId] NVARCHAR(55) NULL,
	[WalletRoundId] NVARCHAR(55) NULL,
	[UserId] NVARCHAR(500) NOT NULL,
	[DeviceId] INT NOT NULL,
	[StatusId] INT NOT NULL,
	[GameResult] NVARCHAR(MAX) NULL,
	[FundsStart] decimal(10,2) NOT NULL,
	[FundsEnd] decimal(10,2) NULL,
	[Gaf] NVARCHAR(MAX) NULL,
	[Created] DATETIME NOT NULL DEFAULT GETDATE(),
	[Updated] DATETIME NOT NULL DEFAULT GETDATE(),
	CONSTRAINT [FK_Round_RoundStatus] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[RoundStatus] ([Id]),
	CONSTRAINT [FK_Round_Operator] FOREIGN KEY ([OperatorId]) REFERENCES [dbo].[Operator] ([Id]),
	CONSTRAINT [FK_Round_Game] FOREIGN KEY ([GameId]) REFERENCES [dbo].[Game] ([Id]),
	CONSTRAINT [FK_Round_Device] FOREIGN KEY ([DeviceId]) REFERENCES [dbo].[Device] ([Id]),
)
