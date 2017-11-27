ALTER PROCEDURE [dw].[p_lataa_f_yo_rekrytointihaut]
AS
USE [ANTERO]
GO
ALTER PROCEDURE [dw].[p_lataa_f_yo_rekrytointihaut]
AS
TRUNCATE TABLE [dw].[f_yo_rekrytointihaut]

INSERT INTO dw.f_yo_rekrytointihaut
	(
	[d_yliopisto_id] -- avaimen yliopisto+hakunumero 1. osa
	,[hakunumero] -- avaimen yliopisto+hakunumero 2. osa
	,[d_kutsuhaku_id]
	,[d_yhteisprofessuuri_id]
	,[d_haun_kansainvalisyys_id]
	,[d_sukupuoli_id]
	,[d_kansalaisuus_suomi_id]
	,[d_hakijan_maanosa_koodi]
	,[d_hakijan_maanosa2_koodi]
	,[vuosi]
	,[hakijat_lkm]
	,[loadtime]
	,[source]
	,[username]
	)
SELECT
	 COALESCE(s2.id, - 1) AS [d_yliopisto_id]
	,COALESCE(s1.hakunumero, - 1) AS [hakunumero]
	,COALESCE(s4.id, - 1) AS [d_kutsuhaku_id]
	,COALESCE(s5.id, - 1) AS [d_yhteisprofessuuri_id]
	,COALESCE(s6.id, - 1) AS [d_haun_kansainvalisyys_id]
	,COALESCE(s7.id, - 1) AS [d_sukupuoli_id]
	,COALESCE(s8.id, - 1) AS [d_kansalaisuus_suomi_id]
	,(CASE
				WHEN [ei-suomalaisen hakijan maanosa] = '1'
					THEN   '1'
				WHEN [ei-suomalaisen hakijan maanosa] = '2'
					THEN '2'
				WHEN [ei-suomalaisen hakijan maanosa] = '3'
					THEN '2'
				WHEN [ei-suomalaisen hakijan maanosa] = '4'
					THEN '2'
				WHEN [ei-suomalaisen hakijan maanosa] = '5'
					THEN '3'
				WHEN [ei-suomalaisen hakijan maanosa] = '6'
					THEN '4'
				WHEN [ei-suomalaisen hakijan maanosa] = '7'
					THEN '5'
				WHEN [ei-suomalaisen hakijan maanosa] = '8'
					THEN '6'
				ELSE   '-1'
			END) as  [d_hakijan_maanosa_koodi]
	,(CASE
				WHEN [ei-suomalaisen hakijan maanosa] = '1'
					THEN   '1'
				WHEN [ei-suomalaisen hakijan maanosa] = '2'
					THEN '2A'
				WHEN [ei-suomalaisen hakijan maanosa] = '3'
					THEN '2B'
				WHEN [ei-suomalaisen hakijan maanosa] = '4'
					THEN '-1'
				WHEN [ei-suomalaisen hakijan maanosa] = '5'
					THEN '3'
				WHEN [ei-suomalaisen hakijan maanosa] = '6'
					THEN '4'
				WHEN [ei-suomalaisen hakijan maanosa] = '7'
					THEN '5'
				WHEN [ei-suomalaisen hakijan maanosa] = '8'
					THEN '6'
				ELSE   '-1'
			END) as  [d_hakijan_maanosa2_koodi]
	,s1.tilastovuosi AS vuosi
	,COALESCE(s1.[Hakijoiden määrä per maanosa], - 1) AS [hakijat_lkm]
	,getdate()
	,'etl: p_lataa_f_yo_rekrytointihaut - sa_suorat_yo8a_rekrytointihaut' AS source
	,suser_sname()
FROM [sa].sa_suorat_yo8a_rekrytointihaut s1
LEFT JOIN [dw].d_yo s2 ON s2.yo_tunnus = s1.korkeakoulu
	--LEFT JOIN [dw].d_hakunumerot s3 ON s1.[hakunumero_id] = s3.hakunumero_id
LEFT JOIN [dw].[d_kytkin] s4 ON s4.kytkin_koodi = s1.kutsuhaku
LEFT JOIN [dw].[d_kytkin] s5 ON s5.kytkin_koodi = s1.yhteisprofessuuri
LEFT JOIN [dw].[d_kytkin] s6 ON s6.kytkin_koodi = s1.[haun kansainvälisyys]
LEFT JOIN [dw].[d_sukupuoli] s7 ON s7.sukupuoli_koodi = s1.sukupuoli
LEFT JOIN [dw].[d_kytkin] s8 ON (
		SELECT CASE
				WHEN [kansalaisuus] = '0'
					THEN '1'
				WHEN [kansalaisuus] = '1'
						THEN '0'
				ELSE '-1'
				END AS kansalaisuus_id) =  s8.kytkin_koodi
--LEFT  JOIN [dw].[d_maatjavaltiot2] s9 ON [d_hakijan_maanosa_koodi] = s9.maanosa0_Koodi
			/*
RIGHT JOIN [dw].[d_maatjavaltiot2] s10 ON  s10.maanosa_koodi = (
			SELECT CASE
					WHEN [ei-suomalaisen hakijan maanosa] = '1'
						THEN '1'
					WHEN [ei-suomalaisen hakijan maanosa] = '2'
						THEN '2A'
					WHEN [ei-suomalaisen hakijan maanosa] = '3'
						THEN '2B'
					WHEN [ei-suomalaisen hakijan maanosa] = '4'
						THEN '-1'
					WHEN [ei-suomalaisen hakijan maanosa] = '5'
						THEN '3'
					WHEN [ei-suomalaisen hakijan maanosa] = '6'
						THEN '4'
					WHEN [ei-suomalaisen hakijan maanosa] = '7'
						THEN '5'
					WHEN [ei-suomalaisen hakijan maanosa] = '8'
						THEN '6'
					ELSE '-1'
			END AS d_hakijan_maanosa2_koodi) */
