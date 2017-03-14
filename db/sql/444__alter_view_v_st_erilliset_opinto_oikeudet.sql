


ALTER view [dw].[v_st_erilliset_opinto_oikeudet] as

select 

[Tilastovuosi] = vuosi

,Koulutusala = null
,[OKM ohjauksen ala] = null

,[Yliopisto] = d6.yo_nimi_fi

--mittarit
,f.suorittaneiden_lkm
,f.opettajakoulutus_suorittaneiden_lkm
,erillisilla_oik_op_lkm = null
,erillisilla_oik_opkoul_op_lkm = null

--koodit
,[Koodit Yliopisto] = d6.yo_tunnus
,[Koodit Koulutusala] = null
,[Koodit OKM ohjauksen ala] = null



from [dw].[f_yo_erillisella_opinto_oikeudella_opiskelevat] f
join dw.d_yo d6 on d6.id=f.d_yliopisto_id

union all

select 

[Tilastovuosi] = f.vuosi

,Koulutusala = d1.selite_fi
,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi

,[Yliopisto] = d6.yo_nimi_fi

--mittarit
,null
,null
,[erillisilla_oik_op_lkm]
,[erillisilla_oik_opkoul_op_lkm]

--koodit
,[Koodit Yliopisto] = d6.yo_tunnus
,[Koodit Koulutusala] = d1.koodi
,[Koodit OKM ohjauksen ala] = d2.ohjauksenala_koodi


from [dw].[f_yo_opintopisteet] f
join dw.d_koulutusala_1995 d1 on d1.id=f.d_opintoala95_id
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
join dw.d_yo d6 on d6.id=f.d_yo_id
join dw.d_kalenteri d7 on d7.id=f.d_tilannepvm_id

where d7.paivays like '%-03-02'





