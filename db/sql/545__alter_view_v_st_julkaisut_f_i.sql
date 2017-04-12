

ALTER view [dw].[v_st_julkaisut_f_i] as

select 

[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = d3.julkaisunpaaluokka_nimi_fi
,[Julkaisutyyppi] = d3.julkaisutyyppi_nimi_fi
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = null
,[Koulutusala 02] = d9.selite_fi


,[Ammattikorkeakoulu] = d6.amk_nimi_fi
,[Yliopisto] = null

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'AMK'

--mittarit
,f.julkaisujen_maara
,[h22] = null
,[h23] = null
,[h24] = null


--koodit
,[Koodit Julkaisun pääluokka] = d3.julkaisunpaaluokka_koodi
,[Koodit Julkaisutyyppi] = d3.julkaisutyyppi_koodi
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = null
,[Koodit Koulutusala 2002] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = null
,[Koodit Ammattikorkeakoulu] = d6.amk_tunnus
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end


from [dw].[f_amk_julkaisut_f_i] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_amk d6 on d6.id=f.d_amk_id
join dw.d_koulutusala_2002 d9 on d9.id=f.d_koulutusala_id
where julkaisutyyppi_koodi not like 'H%'


UNION ALL

select 
[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = d3.julkaisunpaaluokka_nimi_fi
,[Julkaisutyyppi] = d3.julkaisutyyppi_nimi_fi
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = d9.selite_fi
,[Koulutusala 02] = null

,[Ammattikorkeakoulu] = null
,[Yliopisto] = d6.yo_nimi_fi

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'Yliopisto'

--mittarit
,f.julkaisujen_maara
,[h22] = null
,[h23] = null
,[h24] = null


--koodit
,[Koodit Julkaisun pääluokka] = d3.julkaisunpaaluokka_koodi
,[Koodit Julkaisutyyppi] = d3.julkaisutyyppi_koodi
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit Koulutusala 2002] = null
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = d6.yo_tunnus
,[Koodit Ammattikorkeakoulu] = null
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end

from [dw].[f_yo_julkaisut_f_i] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_yo d6 on d6.id=f.d_yliopisto_id
join dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala_id
where julkaisutyyppi_koodi not like 'H%'

/*
union all

--H21
select 

[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = 'H Patentit ja keksintöilmoitukset'
,[Julkaisutyyppi] = 'H21 Keksintöilmoitusten määrä'
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = null
,[Koulutusala 02] = d9.selite_fi


,[Ammattikorkeakoulu] = d6.amk_nimi_fi
,[Yliopisto] = null

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'YO'

--mittarit
,[julkaisujen maara] = f.h21

--koodit
,[Koodit Julkaisun pääluokka] = 'H'
,[Koodit Julkaisutyyppi] = 'H21'
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = null
,[Koodit Koulutusala 2002] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = null
,[Koodit Ammattikorkeakoulu] = d6.amk_tunnus
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end


from [dw].[f_amk_keksintoilmoitukset] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
--join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_amk d6 on d6.id=f.d_amk_id
join dw.d_koulutusala_2002 d9 on d9.id=f.d_koulutusala_id


union all

--H21
select 

[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = 'H Patentit ja keksintöilmoitukset'
,[Julkaisutyyppi] = 'H21 Keksintöilmoitusten määrä'
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = d9.selite_fi
,[Koulutusala 02] = null


,[Ammattikorkeakoulu] = null
,[Yliopisto] = d6.yo_nimi_fi

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'YO'

--mittarit
,[julkaisujen maara] = h21


--koodit
,[Koodit Julkaisun pääluokka] = 'H'
,[Koodit Julkaisutyyppi] = 'H21'
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = null
,[Koodit Koulutusala 2002] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = null
,[Koodit Ammattikorkeakoulu] = d6.yo_tunnus
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end


from [dw].[f_yo_keksintoilmoitukset] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
--join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_yo d6 on d6.id=f.d_yliopisto_id
join dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala_id
*/
union all

--H
select 
[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = 'H Patentit ja keksintöilmoitukset'
,[Julkaisutyyppi] = 
					case
						when h21<>0 and h22=0 and h23=0 and h24=0 then 'H21 Keksintöilmoitusten määrä'
						when h21=0 and h22<>0 and h23=0 and h24=0 then 'H22 Jatkotyöstetyt keksintöilmoitukset'
						when h21=0 and h22=0 and h23<>0 and h24=0 then 'H23 Korkeakoulun itselleen ottamat jatkotyöstettyjen keksintöilmoitusten hyödyntämisilmoitukset'
						when h21=0 and h22=0 and h23=0 and h24<>0 then 'H24 Korkeakoulun edelleen siirtämät jatkotyöstettyjen keksintöilmoitusten hyödyntämisilmoitukset'
						else 'Tuntematon'
					end
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = null
,[Koulutusala 02] = d9.selite_fi


,[Ammattikorkeakoulu] = d6.amk_nimi_fi
,[Yliopisto] = null

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'AMK'

--mittarit
,[julkaisujen maara] = f.h21
,[h22]
,[h23]
,[h24]

--koodit
,[Koodit Julkaisun pääluokka] = 'H'
,[Koodit Julkaisutyyppi] = 
					case
						when h21<>0 and h22=0 and h23=0 and h24=0 then 'H21'
						when h21=0 and h22<>0 and h23=0 and h24=0 then 'H22'
						when h21=0 and h22=0 and h23<>0 and h24=0 then 'H23'
						when h21=0 and h22=0 and h23=0 and h24<>0 then 'H24'
						else '-1'
					end
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = null
,[Koodit Koulutusala 2002] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = null
,[Koodit Ammattikorkeakoulu] = d6.amk_tunnus
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end


from [dw].[f_amk_keksintoilmoitukset] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
--join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_amk d6 on d6.id=f.d_amk_id
join dw.d_koulutusala_2002 d9 on d9.id=f.d_koulutusala_id

union all

--H
select 
[Tilastovuosi] = vuosi

,[Julkaisun pääluokka] = 'H Patentit ja keksintöilmoitukset'
,[Julkaisutyyppi] = 
					case
						when h21<>0 and h22=0 and h23=0 and h24=0 then 'H21 Keksintöilmoitusten määrä'
						when h21=0 and h22<>0 and h23=0 and h24=0 then 'H22 Jatkotyöstetyt keksintöilmoitukset'
						when h21=0 and h22=0 and h23<>0 and h24=0 then 'H23 Korkeakoulun itselleen ottamat jatkotyöstettyjen keksintöilmoitusten hyödyntämisilmoitukset'
						when h21=0 and h22=0 and h23=0 and h24<>0 then 'H24 Korkeakoulun edelleen siirtämät jatkotyöstettyjen keksintöilmoitusten hyödyntämisilmoitukset'
						else 'Tuntematon'
					end
,[Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_fi

,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi
,[Koulutusala 95] = d9.selite_fi
,[Koulutusala 02] = null


,[Ammattikorkeakoulu] = null
,[Yliopisto] = d6.yo_nimi_fi

,[Päätieteenala] = d5.paatieteenala_nimi_fi
,[Tieteenala] = d5.tieteenala_nimi_fi

,[Sektori] = 'AMK'

--mittarit
,[julkaisujen maara] = h21
,[h22]
,[h23]
,[h24]

--koodit
,[Koodit Julkaisun pääluokka] = 'H'
,[Koodit Julkaisutyyppi] = 
					case
						when h21<>0 and h22=0 and h23=0 and h24=0 then 'H21'
						when h21=0 and h22<>0 and h23=0 and h24=0 then 'H22'
						when h21=0 and h22=0 and h23<>0 and h24=0 then 'H23'
						when h21=0 and h22=0 and h23=0 and h24<>0 then 'H24'
						else '-1'
					end
,[Koodit Julkaisun kansainvälisyys] = d4.julkaisun_kansainvalisyys_koodi
,[Koodit Koulutusala 1995] = null
,[Koodit Koulutusala 2002] = case d9.koodi when -1 then 99 else d9.koodi end
,[Koodit OKM ohjauksen ala] = case d2.ohjauksenala_koodi when -1 then 9 else d2.ohjauksenala_koodi end
,[Koodit Yliopisto] = null
,[Koodit Ammattikorkeakoulu] = d6.yo_tunnus
,[Koodit Päätieteenala] = case d5.paatieteenala_koodi when -1 then 9 else d5.paatieteenala_koodi end
,[Koodit Tieteenala] = case d5.tieteenala_koodi when -1 then 9999 else d5.tieteenala_koodi end


from [dw].[f_yo_keksintoilmoitukset] f
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
--join dw.d_julkaisutyyppi d3 on d3.id=f.d_julkaisutyyppi_id
join dw.d_julkaisun_kansainvalisyys d4 on d4.id=f.d_julkaisun_kansainvalisyys_id
join dw.d_tieteenala d5 on d5.id=f.d_tieteenala_id
join dw.d_yo d6 on d6.id=f.d_yliopisto_id
join dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala_id



