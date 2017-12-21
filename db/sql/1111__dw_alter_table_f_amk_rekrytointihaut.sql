USE [ANTERO]
GO
IF  EXISTS (select * from INFORMATION_SCHEMA.TABLES
    where TABLE_SCHEMA='dw' and TABLE_NAME='f_amk_rekrytointihaut')
BEGIN
ALTER TABLE [dw].[f_amk_rekrytointihaut] ALTER COLUMN [hakunumero] nvarchar(100);
END
