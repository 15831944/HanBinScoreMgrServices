USE [iCMSDB]
Go
INSERT INTO [dbo].[T_SYS_USER_RELATION_DEVICE]
           ([UserID]
           ,[DevId]
           ,[MTIds]
           ,[AddDate])
SELECT 1011,TSD.DevID,NULL,GETDATE() FROM dbo.T_SYS_DEVICE AS TSD;
Go
INSERT INTO [dbo].[T_SYS_USER_RELATION_WS]
           ([UserID]
           ,[WSID]
           ,[AddDate])
SELECT 1011,TSW.WSID,GETDATE() FROM dbo.T_SYS_WS AS TSW;
Go