USE [VipunenTK_DW]
GO

/****** Object:  View [dbo].[_v_sa_K3_9_Tutk_suor_osuus_aloittaneista_toinen_aste_surrogaattiavaimet_nykytila_taulusta]    Script Date: 9.10.2017 17:28:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER View [dbo].[_v_sa_K3_9_Tutk_suor_osuus_aloittaneista_toinen_aste_surrogaattiavaimet_nykytila_taulusta] as

/****** Script for SelectTopNRows command from SSMS  ******/
--Select * from [okm].[okm_ktpo_tiedontuotanto_in].f --> 6588 rows
--Select * from [vipunen_ETL].[v_sa_K3_9_Tutk_suor_osuus_aloittaneista_toinen_aste_surrogaattiavaimet] --> 6588 rows

SELECT [tilv]
      ,[lahde]
      ,[sp]
      ,[syntv]
      ,[aikielir1]
      ,[alvv]
      ,[allk]
      ,[klaji]
      ,[ophal]
      ,[jarj]
      ,[kkun]
      ,[koulk]
      ,[pohjkoulk]
      ,[tietolahde]
      ,[rivinumero]
      ,[aineistorivinumero]

      ,[lkm]

      ,'lu_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where  
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2004] AND
      suorlk = [lusuorlk_2004] AND
      tutkmaak = [lututkmaak_2004] AND
      tutkjarj = [lututkjarj_2004] AND
      tutkkoulk = [lututkkoulk_2004]  )
      ,'ampt_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2004] AND
      suorlk = [amptsuorlk_2004] AND
      tutkmaak = [ampttutkmaak_2004] AND
      tutkjarj = [ampttutkjarj_2004] AND
      tutkkoulk = [ampttutkkoulk_2004]  )
      ,'amlk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2004] AND
      suorlk = [amlksuorlk_2004] AND
      tutkmaak = [amlktutkmaak_2004] AND
      tutkjarj = [amlktutkjarj_2004] AND
      tutkkoulk = [amlktutkkoulk_2004]  )
      ,'muukk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2004] AND
      suorlk = [muukksuorlk_2004] AND
      tutkmaak = [muukktutkmaak_2004] AND
      tutkjarj = [muukktutkjarj_2004] AND
      tutkkoulk = [muukktutkkoulk_2004]  )
      ,'lu_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2005] AND
      suorlk = [lusuorlk_2005] AND
      tutkmaak = [lututkmaak_2005] AND
      tutkjarj = [lututkjarj_2005] AND
      tutkkoulk = [lututkkoulk_2005]  )
      ,'ampt_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2005] AND
      suorlk  = [amptsuorlk_2005] AND
      tutkmaak = [ampttutkmaak_2005] AND
      tutkjarj = [ampttutkjarj_2005] AND
      tutkkoulk = [ampttutkkoulk_2005]  )
      ,'amlk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2005] AND
      suorlk = [amlksuorlk_2005] AND
      tutkmaak = [amlktutkmaak_2005] AND
      tutkjarj = [amlktutkjarj_2005] AND
      tutkkoulk = [amlktutkkoulk_2005]  )
      ,'muukk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2005] AND
      suorlk = [muukksuorlk_2005] AND
      tutkmaak = [muukktutkmaak_2005] AND
      tutkjarj = [muukktutkjarj_2005] AND
      tutkkoulk = [muukktutkkoulk_2005]  )
      ,'lu_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2006] AND
      suorlk = [lusuorlk_2006] AND
      tutkmaak = [lututkmaak_2006] AND
      tutkjarj = [lututkjarj_2006] AND
      tutkkoulk = [lututkkoulk_2006]  )
      ,'ampt_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2006] AND
      suorlk = [amptsuorlk_2006] AND
      tutkmaak = [ampttutkmaak_2006] AND
      tutkjarj = [ampttutkjarj_2006] AND
      tutkkoulk = [ampttutkkoulk_2006]  )
      ,'amlk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2006] AND
      suorlk = [amlksuorlk_2006] AND
      tutkmaak = [amlktutkmaak_2006] AND
      tutkjarj = [amlktutkjarj_2006] AND
      tutkkoulk = [amlktutkkoulk_2006]  )
      ,'muukk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2006] AND
      suorlk = [muukksuorlk_2006] AND
      tutkmaak = [muukktutkmaak_2006] AND
      tutkjarj = [muukktutkjarj_2006] AND
      tutkkoulk = [muukktutkkoulk_2006]  )
      ,'lu_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2007] AND
      suorlk = [lusuorlk_2007] AND
      tutkmaak = [lututkmaak_2007] AND
      tutkjarj = [lututkjarj_2007] AND
      tutkkoulk = [lututkkoulk_2007]  )
      ,'ampt_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2007] AND
      suorlk = [amptsuorlk_2007] AND
      tutkmaak = [ampttutkmaak_2007] AND
      tutkjarj = [ampttutkjarj_2007] AND
      tutkkoulk = [ampttutkkoulk_2007]  )
      ,'amlk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2007] AND
      suorlk = [amlksuorlk_2007] AND
      tutkmaak = [amlktutkmaak_2007] AND
      tutkjarj = [amlktutkjarj_2007] AND
      tutkkoulk = [amlktutkkoulk_2007]  )
      ,'muukk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2007] AND
      suorlk = [muukksuorlk_2007] AND
      tutkmaak = [muukktutkmaak_2007] AND
      tutkjarj = [muukktutkjarj_2007] AND
      tutkkoulk = [muukktutkkoulk_2007]  )
      ,'lu_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2008] AND
      suorlk = [lusuorlk_2008] AND
      tutkmaak = [lututkmaak_2008] AND
      tutkjarj = [lututkjarj_2008] AND
      tutkkoulk = [lututkkoulk_2008]  )
      ,'ampt_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where   
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv =  [amptsuorv_2008] AND
      suorlk = [amptsuorlk_2008] AND
      tutkmaak = [ampttutkmaak_2008] AND
      tutkjarj = [ampttutkjarj_2008] AND
      tutkkoulk = [ampttutkkoulk_2008]  )
      ,'amlk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2008] AND
      suorlk = [amlksuorlk_2008] AND
      tutkmaak = [amlktutkmaak_2008] AND
      tutkjarj = [amlktutkjarj_2008] AND
      tutkkoulk = [amlktutkkoulk_2008]  )
      ,'muukk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2008] AND
      suorlk = [muukksuorlk_2008] AND
      tutkmaak = [muukktutkmaak_2008] AND
      tutkjarj = [muukktutkjarj_2008] AND
      tutkkoulk = [muukktutkkoulk_2008]  )
      ,'luopisk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2004] AND
      opiskjarj = [luopiskjarj_2004] AND
      kmaak = [lukmaak_2004]  )
      ,'amptopisk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2004] AND
      opiskjarj = [amptopiskjarj_2004] AND
      kmaak = [amptkmaak_2004]  )
      ,'amlkopisk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2004] AND
      opiskjarj = [amlkopiskjarj_2004] AND
      kmaak = [amlkkmaak_2004]  )
      ,'muukkopisk_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2004] AND
      opiskjarj = [muukkopiskjarj_2004] AND
      kmaak = [muukkkmaak_2004]  )
      ,'luopisk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2005] AND
      opiskjarj = [luopiskjarj_2005] AND
      kmaak = [lukmaak_2005]  )
      ,'amptopisk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2005] AND
      opiskjarj = [amptopiskjarj_2005] AND
      kmaak = [amptkmaak_2005]  )
      ,'amlkopisk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2005] AND
      opiskjarj = [amlkopiskjarj_2005] AND
      kmaak = [amlkkmaak_2005]  )
      ,'muukkopisk_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2005] AND
      opiskjarj = [muukkopiskjarj_2005] AND
      kmaak = [muukkkmaak_2005]  )
      ,'luopisk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2006] AND
      opiskjarj = [luopiskjarj_2006] AND
      kmaak = [lukmaak_2006]  )
      ,'amptopisk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2006] AND
      opiskjarj = [amptopiskjarj_2006] AND
      kmaak = [amptkmaak_2006]  )
      ,'amlkopisk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2006] AND
      opiskjarj = [amlkopiskjarj_2006] AND
      kmaak = [amlkkmaak_2006]  )
      ,'muukkopisk_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2006] AND
      opiskjarj = [muukkopiskjarj_2006] AND
      kmaak = [muukkkmaak_2006]  )
      ,'luopisk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2007] AND
      opiskjarj = [luopiskjarj_2007] AND
      kmaak = [lukmaak_2007]  )
      ,'amptopisk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2007] AND
      opiskjarj = [amptopiskjarj_2007] AND
      kmaak = [amptkmaak_2007]  )
      ,'amlkopisk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2007] AND
      opiskjarj = [amlkopiskjarj_2007] AND
      kmaak = [amlkkmaak_2007]  )
      ,'muukkopisk_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2007] AND
      opiskjarj = [muukkopiskjarj_2007] AND
      kmaak = [muukkkmaak_2007]  )
      ,'luopisk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2008] AND
      opiskjarj = [luopiskjarj_2008] AND
      kmaak = [lukmaak_2008]  )
      ,'amptopisk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2008] AND
      opiskjarj = [amptopiskjarj_2008] AND
      kmaak = [amptkmaak_2008]  )
      ,'amlkopisk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2008] AND
      opiskjarj = [amlkopiskjarj_2008] AND
      kmaak = [amlkkmaak_2008]  )
      ,'muukkopisk_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2008] AND
      opiskjarj = [muukkopiskjarj_2008] AND
      kmaak = [muukkkmaak_2008]  )
      ,'ptoim1r5_2004' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2004] AND
      amas = [amas_2004]  )
      ,'ptoim1r5_2005' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2005] AND
      amas = [amas_2005]  )
      ,'ptoim1r5_2006' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2006] AND
      amas = [amas_2006]  )
      ,'ptoim1r5_2007' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2007] AND
      amas = [amas_2007]  )
      ,'ptoim1r5_2008' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2008] AND
      amas = [amas_2008]  )
--2009
      ,'lu_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2009] AND
      suorlk = [lusuorlk_2009] AND
      tutkmaak = [lututkmaak_2009] AND
      tutkjarj = [lututkjarj_2009] AND
      tutkkoulk = [lututkkoulk_2009]  )
      ,'ampt_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2009] AND
      suorlk = [amptsuorlk_2009] AND
      tutkmaak = [ampttutkmaak_2009] AND
      tutkjarj = [ampttutkjarj_2009] AND
      tutkkoulk = [ampttutkkoulk_2009]  )
      ,'amlk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2009] AND
      suorlk = [amlksuorlk_2009] AND
      tutkmaak = [amlktutkmaak_2009] AND
      tutkjarj = [amlktutkjarj_2009] AND
      tutkkoulk = [amlktutkkoulk_2009]  )
      ,'muukk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2009] AND
      suorlk = [muukksuorlk_2009] AND
      tutkmaak = [muukktutkmaak_2009] AND
      tutkjarj = [muukktutkjarj_2009] AND
      tutkkoulk = [muukktutkkoulk_2009]  )
      ,'luopisk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2009] AND
      opiskjarj = [luopiskjarj_2009] AND
      kmaak = [lukmaak_2009]  )
      ,'amptopisk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2009] AND
      opiskjarj = [amptopiskjarj_2009] AND
      kmaak = [amptkmaak_2009]  )
      ,'amlkopisk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2009] AND
      opiskjarj = [amlkopiskjarj_2009] AND
      kmaak = [amlkkmaak_2009]  )
      ,'muukkopisk_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2009] AND
      opiskjarj = [muukkopiskjarj_2009] AND
      kmaak = [muukkkmaak_2009]  )
      ,'ptoim1r5_2009' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2009] AND
      amas = [amas_2009]  )
--2010
      ,'lu_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2010] AND
      suorlk = [lusuorlk_2010] AND
      tutkmaak = [lututkmaak_2010] AND
      tutkjarj = [lututkjarj_2010] AND
      tutkkoulk = [lututkkoulk_2010]  )
      ,'ampt_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2010] AND
      suorlk = [amptsuorlk_2010] AND
      tutkmaak = [ampttutkmaak_2010] AND
      tutkjarj = [ampttutkjarj_2010] AND
      tutkkoulk = [ampttutkkoulk_2010]  )
      ,'amlk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2010] AND
      suorlk = [amlksuorlk_2010] AND
      tutkmaak = [amlktutkmaak_2010] AND
      tutkjarj = [amlktutkjarj_2010] AND
      tutkkoulk = [amlktutkkoulk_2010]  )
      ,'muukk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2010] AND
      suorlk = [muukksuorlk_2010] AND
      tutkmaak = [muukktutkmaak_2010] AND
      tutkjarj = [muukktutkjarj_2010] AND
      tutkkoulk = [muukktutkkoulk_2010]  )
      ,'luopisk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2010] AND
      opiskjarj = [luopiskjarj_2010] AND
      kmaak = [lukmaak_2010]  )
      ,'amptopisk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2010] AND
      opiskjarj = [amptopiskjarj_2010] AND
      kmaak = [amptkmaak_2010]  )
      ,'amlkopisk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2010] AND
      opiskjarj = [amlkopiskjarj_2010] AND
      kmaak = [amlkkmaak_2010]  )
      ,'muukkopisk_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2010] AND
      opiskjarj = [muukkopiskjarj_2010] AND
      kmaak = [muukkkmaak_2010]  )
      ,'ptoim1r5_2010' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2010] AND
      amas = [amas_2010]  )
--2011
      ,'lu_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2011] AND
      suorlk = [lusuorlk_2011] AND
      tutkmaak = [lututkmaak_2011] AND
      tutkjarj = [lututkjarj_2011] AND
      tutkkoulk = [lututkkoulk_2011]  )
      ,'ampt_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2011] AND
      suorlk = [amptsuorlk_2011] AND
      tutkmaak = [ampttutkmaak_2011] AND
      tutkjarj = [ampttutkjarj_2011] AND
      tutkkoulk = [ampttutkkoulk_2011]  )
      ,'amlk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2011] AND
      suorlk = [amlksuorlk_2011] AND
      tutkmaak = [amlktutkmaak_2011] AND
      tutkjarj = [amlktutkjarj_2011] AND
      tutkkoulk = [amlktutkkoulk_2011]  )
      ,'muukk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2011] AND
      suorlk = [muukksuorlk_2011] AND
      tutkmaak = [muukktutkmaak_2011] AND
      tutkjarj = [muukktutkjarj_2011] AND
      tutkkoulk = [muukktutkkoulk_2011]  )
      ,'luopisk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2011] AND
      opiskjarj = [luopiskjarj_2011] AND
      kmaak = [lukmaak_2011]  )
      ,'amptopisk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2011] AND
      opiskjarj = [amptopiskjarj_2011] AND
      kmaak = [amptkmaak_2011]  )
      ,'amlkopisk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2011] AND
      opiskjarj = [amlkopiskjarj_2011] AND
      kmaak = [amlkkmaak_2011]  )
      ,'muukkopisk_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2011] AND
      opiskjarj = [muukkopiskjarj_2011] AND
      kmaak = [muukkkmaak_2011]  )
      ,'ptoim1r5_2011' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2011] AND
      amas = [amas_2011]  )
--2012
      ,'lu_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2012] AND
      suorlk = [lusuorlk_2012] AND
      tutkmaak = [lututkmaak_2012] AND
      tutkjarj = [lututkjarj_2012] AND
      tutkkoulk = [lututkkoulk_2012]  )
      ,'ampt_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2012] AND
      suorlk = [amptsuorlk_2012] AND
      tutkmaak = [ampttutkmaak_2012] AND
      tutkjarj = [ampttutkjarj_2012] AND
      tutkkoulk = [ampttutkkoulk_2012]  )
      ,'amlk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2012] AND
      suorlk = [amlksuorlk_2012] AND
      tutkmaak = [amlktutkmaak_2012] AND
      tutkjarj = [amlktutkjarj_2012] AND
      tutkkoulk = [amlktutkkoulk_2012]  )
      ,'muukk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2012] AND
      suorlk = [muukksuorlk_2012] AND
      tutkmaak = [muukktutkmaak_2012] AND
      tutkjarj = [muukktutkjarj_2012] AND
      tutkkoulk = [muukktutkkoulk_2012]  )
      ,'luopisk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2012] AND
      opiskjarj = [luopiskjarj_2012] AND
      kmaak = [lukmaak_2012]  )
      ,'amptopisk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2012] AND
      opiskjarj = [amptopiskjarj_2012] AND
      kmaak = [amptkmaak_2012]  )
      ,'amlkopisk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2012] AND
      opiskjarj = [amlkopiskjarj_2012] AND
      kmaak = [amlkkmaak_2012]  )
      ,'muukkopisk_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2012] AND
      opiskjarj = [muukkopiskjarj_2012] AND
      kmaak = [muukkkmaak_2012]  )
      ,'ptoim1r5_2012' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2012] AND
      amas = [amas_2012]  )
--2013
      ,'lu_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2013] AND
      suorlk = [lusuorlk_2013] AND
      tutkmaak = [lututkmaak_2013] AND
      tutkjarj = [lututkjarj_2013] AND
      tutkkoulk = [lututkkoulk_2013]  )
      ,'ampt_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2013] AND
      suorlk = [amptsuorlk_2013] AND
      tutkmaak = [ampttutkmaak_2013] AND
      tutkjarj = [ampttutkjarj_2013] AND
      tutkkoulk = [ampttutkkoulk_2013]  )
      ,'amlk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2013] AND
      suorlk = [amlksuorlk_2013] AND
      tutkmaak = [amlktutkmaak_2013] AND
      tutkjarj = [amlktutkjarj_2013] AND
      tutkkoulk = [amlktutkkoulk_2013]  )
      ,'muukk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2013] AND
      suorlk = [muukksuorlk_2013] AND
      tutkmaak = [muukktutkmaak_2013] AND
      tutkjarj = [muukktutkjarj_2013] AND
      tutkkoulk = [muukktutkkoulk_2013]  )
      ,'luopisk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2013] AND
      opiskjarj = [luopiskjarj_2013] AND
      kmaak = [lukmaak_2013]  )
      ,'amptopisk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2013] AND
      opiskjarj = [amptopiskjarj_2013] AND
      kmaak = [amptkmaak_2013]  )
      ,'amlkopisk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2013] AND
      opiskjarj = [amlkopiskjarj_2013] AND
      kmaak = [amlkkmaak_2013]  )
      ,'muukkopisk_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2013] AND
      opiskjarj = [muukkopiskjarj_2013] AND
      kmaak = [muukkkmaak_2013]  )
      ,'ptoim1r5_2013' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2013] AND
      amas = [amas_2013]  )

--2014
      ,'lu_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2014] AND
      suorlk = [lusuorlk_2014] AND
      tutkmaak = [lututkmaak_2014] AND
      tutkjarj = [lututkjarj_2014] AND
      tutkkoulk = [lututkkoulk_2014]  )
      ,'ampt_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2014] AND
      suorlk = [amptsuorlk_2014] AND
      tutkmaak = [ampttutkmaak_2014] AND
      tutkjarj = [ampttutkjarj_2014] AND
      tutkkoulk = [ampttutkkoulk_2014]  )
      ,'amlk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2014] AND
      suorlk = [amlksuorlk_2014] AND
      tutkmaak = [amlktutkmaak_2014] AND
      tutkjarj = [amlktutkjarj_2014] AND
      tutkkoulk = [amlktutkkoulk_2014]  )
      ,'muukk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2014] AND
      suorlk = [muukksuorlk_2014] AND
      tutkmaak = [muukktutkmaak_2014] AND
      tutkjarj = [muukktutkjarj_2014] AND
      tutkkoulk = [muukktutkkoulk_2014]  )
      ,'luopisk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2014] AND
      opiskjarj = [luopiskjarj_2014] AND
      kmaak = [lukmaak_2014]  )
      ,'amptopisk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2014] AND
      opiskjarj = [amptopiskjarj_2014] AND
      kmaak = [amptkmaak_2014]  )
      ,'amlkopisk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2014] AND
      opiskjarj = [amlkopiskjarj_2014] AND
      kmaak = [amlkkmaak_2014]  )
      ,'muukkopisk_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2014] AND
      opiskjarj = [muukkopiskjarj_2014] AND
      kmaak = [muukkkmaak_2014]  )
      ,'ptoim1r5_2014' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2014] AND
      amas = [amas_2014]  )

--2015
      ,'lu_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [lusuorv_2015] AND
      suorlk = [lusuorlk_2015] AND
      tutkmaak = [lututkmaak_2015] AND
      tutkjarj = [lututkjarj_2015] AND
      tutkkoulk = [lututkkoulk_2015]  )
      ,'ampt_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amptsuorv_2015] AND
      suorlk = [amptsuorlk_2015] AND
      tutkmaak = [ampttutkmaak_2015] AND
      tutkjarj = [ampttutkjarj_2015] AND
      tutkkoulk = [ampttutkkoulk_2015]  )
      ,'amlk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [amlksuorv_2015] AND
      suorlk = [amlksuorlk_2015] AND
      tutkmaak = [amlktutkmaak_2015] AND
      tutkjarj = [amlktutkjarj_2015] AND
      tutkkoulk = [amlktutkkoulk_2015]  )
      ,'muukk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      suorv = [muukksuorv_2015] AND
      suorlk = [muukksuorlk_2015] AND
      tutkmaak = [muukktutkmaak_2015] AND
      tutkjarj = [muukktutkjarj_2015] AND
      tutkkoulk = [muukktutkkoulk_2015]  )
      ,'luopisk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [luopiskkoulk_2015] AND
      opiskjarj = [luopiskjarj_2015] AND
      kmaak = [lukmaak_2015]  )
      ,'amptopisk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amptopiskkoulk_2015] AND
      opiskjarj = [amptopiskjarj_2015] AND
      kmaak = [amptkmaak_2015]  )
      ,'amlkopisk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [amlkopiskkoulk_2015] AND
      opiskjarj = [amlkopiskjarj_2015] AND
      kmaak = [amlkkmaak_2015]  )
      ,'muukkopisk_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
	  [_aloittaneiden_lapaisy_avaimet].tilv = f.tilv AND
	  [_aloittaneiden_lapaisy_avaimet].lahde = f.lahde AND
      opiskkoulk = [muukkopiskkoulk_2015] AND
      opiskjarj = [muukkopiskjarj_2015] AND
      kmaak = [muukkkmaak_2015]  )
      ,'ptoim1r5_2015' = (select id from [_aloittaneiden_lapaisy_avaimet] where    
      ptoim1r5 = [ptoim1r5_2015] AND
      amas = [amas_2015]  )

--UUSI VUOSI
--Lisää uuden vuoden kentät tähän yläpuolelle. Käytä pohjana edellisen vuoden kenttiä.
  FROM VipunenTK_DW.dbo.[_sa_K3_9_Tutk_suor_osuus_aloittaneista_toinen_aste_nykytila] f





GO


USE [ANTERO]