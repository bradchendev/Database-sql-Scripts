﻿


DBCC SQLPERF(LOGSPACE);


--Database Name	Log Size (MB)	Log Space Used (%)	Status
--master	1.992188	35.4902	0
--tempdb	7.992188	11.14369	0
--model	7.992188	6.304986	0
--msdb	8.179688	16.38013	0
--AdventureWorks2017	71.99219	10.48833	0



CREATE TABLE #TLogMon(
	DB SYSNAME,
	LogSizeMB DECIMAL(22,4),
	LogSpaceUsed DECIMAL(5,2),
	[Status] TINYINT,
	RecordStamp DATETIME DEFAULT GETDATE()
)
 
 
INSERT INTO #TLogMon (DB,LogSizeMB,LogSpaceUsed,[Status]) 
EXEC ('DBCC SQLPERF(LOGSPACE);')
 
 
SELECT *
FROM #TLogMon

