IF EXISTS (
  select * from INFORMATION_SCHEMA.COLUMNS
  where TABLE_SCHEMA='sa' and TABLE_NAME='sa_virta_jtp_tkjulkaisut'
  and COLUMN_NAME='isbn'
  and DATA_TYPE='nvarchar' and CHARACTER_MAXIMUM_LENGTH='20'
) BEGIN
ALTER TABLE sa.sa_virta_jtp_tkjulkaisut ALTER COLUMN isbn varchar(30)
END