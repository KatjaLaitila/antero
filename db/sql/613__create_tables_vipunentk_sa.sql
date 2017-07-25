USE [VipunenTK_SA]
GO
/****** Object:  Table [dbo].[TK_2_7_2012_sopv_14]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TK_2_7_2012_sopv_14]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TK_2_7_2012_sopv_14](
	[tilv] [varchar](4) NULL,
	[lahde] [varchar](2) NULL,
	[perusjoukko] [varchar](1) NULL,
	[tunn] [varchar](5) NULL,
	[jarj] [varchar](10) NULL,
	[opjarj] [varchar](10) NULL,
	[koulk] [varchar](6) NULL,
	[tutklaja] [varchar](1) NULL,
	[tutktav] [varchar](1) NULL,
	[kkieli] [varchar](2) NULL,
	[kmaak] [varchar](2) NULL,
	[lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TK_K3_16_sopv_14]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TK_K3_16_sopv_14]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TK_K3_16_sopv_14](
	[tilv] [varchar](4) NULL,
	[allk] [varchar](1) NULL,
	[luammhaku1_tunn] [varchar](5) NULL,
	[luammhaku2_tunn] [varchar](5) NULL,
	[luammhaku3_tunn] [varchar](5) NULL,
	[luammhaku4_tunn] [varchar](5) NULL,
	[luammhaku5_tunn] [varchar](5) NULL,
	[luammhaku1_opmast] [varchar](2) NULL,
	[luammhaku2_opmast] [varchar](2) NULL,
	[luammhaku3_opmast] [varchar](2) NULL,
	[luammhaku4_opmast] [varchar](2) NULL,
	[luammhaku5_opmast] [varchar](2) NULL,
	[luammhaku1_opmopa] [varchar](3) NULL,
	[luammhaku2_opmopa] [varchar](3) NULL,
	[luammhaku3_opmopa] [varchar](3) NULL,
	[luammhaku4_opmopa] [varchar](3) NULL,
	[luammhaku5_opmopa] [varchar](3) NULL,
	[luammhaku1_opm95opa] [varchar](3) NULL,
	[luammhaku2_opm95opa] [varchar](3) NULL,
	[luammhaku3_opm95opa] [varchar](3) NULL,
	[luammhaku4_opm95opa] [varchar](3) NULL,
	[luammhaku5_opm95opa] [varchar](3) NULL,
	[luammhaku1_okieli] [varchar](1) NULL,
	[luammhaku2_okieli] [varchar](1) NULL,
	[luammhaku3_okieli] [varchar](1) NULL,
	[luammhaku4_okieli] [varchar](1) NULL,
	[luammhaku5_okieli] [varchar](1) NULL,
	[luammhaku1_hyv] [varchar](1) NULL,
	[luammhaku2_hyv] [varchar](1) NULL,
	[luammhaku3_hyv] [varchar](1) NULL,
	[luammhaku4_hyv] [varchar](1) NULL,
	[luammhaku5_hyv] [varchar](1) NULL,
	[luammhaku1_vastotto] [varchar](1) NULL,
	[luammhaku2_vastotto] [varchar](1) NULL,
	[luammhaku3_vastotto] [varchar](1) NULL,
	[luammhaku4_vastotto] [varchar](1) NULL,
	[luammhaku5_vastotto] [varchar](1) NULL,
	[amkhaku1_tunn] [varchar](5) NULL,
	[amkhaku2_tunn] [varchar](5) NULL,
	[amkhaku3_tunn] [varchar](5) NULL,
	[amkhaku4_tunn] [varchar](5) NULL,
	[amkhakum_tunn] [varchar](5) NULL,
	[amkhaku1_opmast] [varchar](3) NULL,
	[amkhaku2_opmast] [varchar](3) NULL,
	[amkhaku3_opmast] [varchar](3) NULL,
	[amkhaku4_opmast] [varchar](3) NULL,
	[amkhakum_opmast] [varchar](3) NULL,
	[amkhaku1_opmopa] [varchar](3) NULL,
	[amkhaku2_opmopa] [varchar](3) NULL,
	[amkhaku3_opmopa] [varchar](3) NULL,
	[amkhaku4_opmopa] [varchar](3) NULL,
	[amkhakum_opmopa] [varchar](3) NULL,
	[amkhaku1_opm95opa] [varchar](3) NULL,
	[amkhaku2_opm95opa] [varchar](3) NULL,
	[amkhaku3_opm95opa] [varchar](3) NULL,
	[amkhaku4_opm95opa] [varchar](3) NULL,
	[amkhakum_opm95opa] [varchar](3) NULL,
	[amkhaku1_koultyp] [varchar](1) NULL,
	[amkhaku2_koultyp] [varchar](1) NULL,
	[amkhaku3_koultyp] [varchar](1) NULL,
	[amkhaku4_koultyp] [varchar](1) NULL,
	[amkhakum_koultyp] [varchar](1) NULL,
	[amkhaku1_okieli] [varchar](1) NULL,
	[amkhaku2_okieli] [varchar](1) NULL,
	[amkhaku3_okieli] [varchar](1) NULL,
	[amkhaku4_okieli] [varchar](1) NULL,
	[amkhakum_okieli] [varchar](1) NULL,
	[amkhaku1_hyv] [varchar](1) NULL,
	[amkhaku2_hyv] [varchar](1) NULL,
	[amkhaku3_hyv] [varchar](1) NULL,
	[amkhaku4_hyv] [varchar](1) NULL,
	[amkhakum_hyv] [varchar](1) NULL,
	[amkhaku1_vastotto] [varchar](1) NULL,
	[amkhaku2_vastotto] [varchar](1) NULL,
	[amkhaku3_vastotto] [varchar](1) NULL,
	[amkhaku4_vastotto] [varchar](1) NULL,
	[amkhakum_vastotto] [varchar](1) NULL,
	[yohakua_tunn] [varchar](5) NULL,
	[yohakub_tunn] [varchar](5) NULL,
	[yohakuc_tunn] [varchar](5) NULL,
	[yohakud_tunn] [varchar](5) NULL,
	[yohakue_tunn] [varchar](5) NULL,
	[yohakuf_tunn] [varchar](5) NULL,
	[yohakug_tunn] [varchar](5) NULL,
	[yohakuh_tunn] [varchar](5) NULL,
	[yohakui_tunn] [varchar](5) NULL,
	[yohakua_opmast] [varchar](2) NULL,
	[yohakub_opmast] [varchar](2) NULL,
	[yohakuc_opmast] [varchar](2) NULL,
	[yohakud_opmast] [varchar](2) NULL,
	[yohakue_opmast] [varchar](2) NULL,
	[yohakuf_opmast] [varchar](2) NULL,
	[yohakug_opmast] [varchar](2) NULL,
	[yohakuh_opmast] [varchar](2) NULL,
	[yohakui_opmast] [varchar](2) NULL,
	[yohakua_opmopa] [varchar](3) NULL,
	[yohakub_opmopa] [varchar](3) NULL,
	[yohakuc_opmopa] [varchar](3) NULL,
	[yohakud_opmopa] [varchar](3) NULL,
	[yohakue_opmopa] [varchar](3) NULL,
	[yohakuf_opmopa] [varchar](3) NULL,
	[yohakug_opmopa] [varchar](3) NULL,
	[yohakuh_opmopa] [varchar](3) NULL,
	[yohakui_opmopa] [varchar](3) NULL,
	[yohakua_opm95opa] [varchar](3) NULL,
	[yohakub_opm95opa] [varchar](3) NULL,
	[yohakuc_opm95opa] [varchar](3) NULL,
	[yohakud_opm95opa] [varchar](3) NULL,
	[yohakue_opm95opa] [varchar](3) NULL,
	[yohakuf_opm95opa] [varchar](3) NULL,
	[yohakug_opm95opa] [varchar](3) NULL,
	[yohakuh_opm95opa] [varchar](3) NULL,
	[yohakui_opm95opa] [varchar](3) NULL,
	[yohakua_hyv] [varchar](1) NULL,
	[yohakub_hyv] [varchar](1) NULL,
	[yohakuc_hyv] [varchar](1) NULL,
	[yohakud_hyv] [varchar](1) NULL,
	[yohakue_hyv] [varchar](1) NULL,
	[yohakuf_hyv] [varchar](1) NULL,
	[yohakug_hyv] [varchar](1) NULL,
	[yohakuh_hyv] [varchar](1) NULL,
	[yohakui_hyv] [varchar](1) NULL,
	[yohakua_vastotto] [varchar](1) NULL,
	[yohakub_vastotto] [varchar](1) NULL,
	[yohakuc_vastotto] [varchar](1) NULL,
	[yohakud_vastotto] [varchar](1) NULL,
	[yohakue_vastotto] [varchar](1) NULL,
	[yohakuf_vastotto] [varchar](1) NULL,
	[yohakug_vastotto] [varchar](1) NULL,
	[yohakuh_vastotto] [varchar](1) NULL,
	[yohakui_vastotto] [varchar](1) NULL,
	[yohakua_harekast] [varchar](2) NULL,
	[yohakub_harekast] [varchar](2) NULL,
	[yohakuc_harekast] [varchar](2) NULL,
	[yohakud_harekast] [varchar](2) NULL,
	[yohakue_harekast] [varchar](2) NULL,
	[yohakuf_harekast] [varchar](2) NULL,
	[yohakug_harekast] [varchar](2) NULL,
	[yohakuh_harekast] [varchar](2) NULL,
	[yohakui_harekast] [varchar](2) NULL,
	[yohakua_ylempi] [varchar](1) NULL,
	[yohakub_ylempi] [varchar](1) NULL,
	[yohakuc_ylempi] [varchar](1) NULL,
	[yohakud_ylempi] [varchar](1) NULL,
	[yohakue_ylempi] [varchar](1) NULL,
	[yohakuf_ylempi] [varchar](1) NULL,
	[yohakug_ylempi] [varchar](1) NULL,
	[yohakuh_ylempi] [varchar](1) NULL,
	[yohakui_ylempi] [varchar](1) NULL,
	[yohakua_erval] [varchar](1) NULL,
	[yohakub_erval] [varchar](1) NULL,
	[yohakuc_erval] [varchar](1) NULL,
	[yohakud_erval] [varchar](1) NULL,
	[yohakue_erval] [varchar](1) NULL,
	[yohakuf_erval] [varchar](1) NULL,
	[yohakug_erval] [varchar](1) NULL,
	[yohakuh_erval] [varchar](1) NULL,
	[yohakui_erval] [varchar](1) NULL,
	[luhakux] [varchar](1) NULL,
	[luhaku2x] [varchar](1) NULL,
	[luhaku3x] [varchar](1) NULL,
	[ammhakux] [varchar](1) NULL,
	[ammhaku2x] [varchar](1) NULL,
	[ammhaku3x] [varchar](1) NULL,
	[amkhakux] [varchar](1) NULL,
	[amkhaku2x] [varchar](1) NULL,
	[amkhaku3x] [varchar](1) NULL,
	[yohakux] [varchar](1) NULL,
	[yohaku2x] [varchar](1) NULL,
	[yohaku3x] [varchar](1) NULL,
	[sp] [varchar](1) NULL,
	[aikielir1] [varchar](2) NULL,
	[syntv] [varchar](4) NULL,
	[tilvaskunx] [varchar](3) NULL,
	[kansalr1] [varchar](1) NULL,
	[aikyotutk] [varchar](1) NULL,
	[aikyotutkkoulk] [varchar](6) NULL,
	[suvuosiyotutk] [varchar](4) NULL,
	[tunnyotutk] [varchar](5) NULL,
	[aikamm] [varchar](1) NULL,
	[aikammkoulk] [varchar](6) NULL,
	[suvuosiamm] [varchar](4) NULL,
	[tunnamm] [varchar](5) NULL,
	[aikamk] [varchar](1) NULL,
	[aikamkkoulk] [varchar](6) NULL,
	[suvuosiamk] [varchar](4) NULL,
	[tunnamk] [varchar](5) NULL,
	[aikylamk] [varchar](1) NULL,
	[aikylamkkoulk] [varchar](6) NULL,
	[suvuosiylamk] [varchar](4) NULL,
	[tunnylamk] [varchar](5) NULL,
	[aikalkk] [varchar](1) NULL,
	[aikalkkkoulk] [varchar](6) NULL,
	[suvuosialkk] [varchar](4) NULL,
	[tunnalkk] [varchar](5) NULL,
	[aikylkk] [varchar](1) NULL,
	[aikylkkkoulk] [varchar](6) NULL,
	[suvuosiylkk] [varchar](4) NULL,
	[tunnylkk] [varchar](5) NULL,
	[aiklistri] [varchar](1) NULL,
	[aiklistrikoulk] [varchar](6) NULL,
	[suvuosilistri] [varchar](4) NULL,
	[tunnlistri] [varchar](5) NULL,
	[yotutkopisx] [varchar](1) NULL,
	[yotutkopisxkoulk] [varchar](6) NULL,
	[yotutkopisxtunn] [varchar](5) NULL,
	[ammopisx] [varchar](1) NULL,
	[ammopisxkoulk] [varchar](6) NULL,
	[ammopisxtunn] [varchar](6) NULL,
	[amkopisx1] [varchar](1) NULL,
	[amkopisxkoulk1] [varchar](6) NULL,
	[amkopisxtunn1] [varchar](5) NULL,
	[amkopisx2] [varchar](1) NULL,
	[amkopisxkoulk2] [varchar](6) NULL,
	[amkopisxtunn2] [varchar](5) NULL,
	[amkopisx3] [varchar](1) NULL,
	[amkopisxkoulk3] [varchar](6) NULL,
	[amkopisxtunn3] [varchar](5) NULL,
	[yoopisx1] [varchar](1) NULL,
	[yoopisxkoulk1] [varchar](6) NULL,
	[yoopisxtunn1] [varchar](5) NULL,
	[yoopisx2] [varchar](1) NULL,
	[yoopisxkoulk2] [varchar](6) NULL,
	[yoopisxtunn2] [varchar](5) NULL,
	[yoopisx3] [varchar](1) NULL,
	[yoopisxkoulk3] [varchar](6) NULL,
	[yoopisxtunn3] [varchar](5) NULL,
	[ptoim1r3x] [varchar](2) NULL,
	[htok] [varchar](1) NULL,
	[lkm] [int] NULL,
	[luontipvm] [date] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tkOPISK2016OKMEnnakko_AMK]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tkOPISK2016OKMEnnakko_AMK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tkOPISK2016OKMEnnakko_AMK](
	[tilv] [varchar](50) NULL,
	[aineisto] [varchar](50) NULL,
	[lahde] [varchar](50) NULL,
	[tunn] [varchar](50) NULL,
	[jarj] [varchar](50) NULL,
	[koulk] [varchar](50) NULL,
	[kkun] [varchar](50) NULL,
	[sp] [varchar](50) NULL,
	[aikielir1x] [varchar](50) NULL,
	[syntv] [varchar](50) NULL,
	[tilvaskun] [varchar](50) NULL,
	[tilvaskunx] [varchar](50) NULL,
	[tilvaskun2x] [varchar](50) NULL,
	[kansalr2] [varchar](50) NULL,
	[alvv] [varchar](50) NULL,
	[allk] [varchar](50) NULL,
	[olotamm] [varchar](50) NULL,
	[olosyys] [varchar](50) NULL,
	[rahlahde] [varchar](50) NULL,
	[fte] [varchar](50) NULL,
	[alvv_kksek] [varchar](50) NULL,
	[alvv_kksek_lasna] [varchar](50) NULL,
	[alvv_sek] [varchar](50) NULL,
	[alvv_sek_lasna] [varchar](50) NULL,
	[alvv_kk] [varchar](50) NULL,
	[alvv_kk_lasna] [varchar](50) NULL,
	[alvv_opa] [varchar](50) NULL,
	[alvv_opa_lasna] [varchar](50) NULL,
	[lkm] [varchar](50) NULL,
	[opyht0] [varchar](50) NULL,
	[opyht14] [varchar](50) NULL,
	[opyht29] [varchar](50) NULL,
	[opyht44] [varchar](50) NULL,
	[opyht59] [varchar](50) NULL,
	[opyht74] [varchar](50) NULL,
	[opyht89] [varchar](50) NULL,
	[opyht104] [varchar](50) NULL,
	[opyht119] [varchar](50) NULL,
	[opyht120] [varchar](50) NULL,
	[op55] [varchar](50) NULL,
	[opes] [varchar](50) NULL,
	[opek] [varchar](50) NULL,
	[opker] [varchar](50) NULL,
	[koultyp] [varchar](50) NULL,
	[kkieli] [varchar](50) NULL,
	[lasnalk] [varchar](50) NULL,
	[poissalk] [varchar](50) NULL,
	[oplaaj] [varchar](50) NULL,
	[kirtu1v] [varchar](50) NULL,
	[kirtu1k] [varchar](50) NULL,
	[ensisop] [varchar](50) NULL,
	[tilmaa] [varchar](50) NULL,
	[kk] [varchar](50) NULL,
	[fuksi] [varchar](50) NULL,
	[opoikv] [varchar](50) NULL,
	[om] [varchar](50) NULL,
	[opkelp] [varchar](50) NULL,
	[avo] [varchar](50) NULL,
	[ltop] [varchar](50) NULL,
	[oha] [varchar](50) NULL,
	[Column 60] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tkOPISK2016OKMEnnakko_YO]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tkOPISK2016OKMEnnakko_YO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tkOPISK2016OKMEnnakko_YO](
	[tilv] [varchar](50) NULL,
	[aineisto] [varchar](50) NULL,
	[lahde] [varchar](50) NULL,
	[tunn] [varchar](50) NULL,
	[jarj] [varchar](50) NULL,
	[koulk] [varchar](50) NULL,
	[kkun] [varchar](50) NULL,
	[sp] [varchar](50) NULL,
	[aikielir1x] [varchar](50) NULL,
	[syntv] [varchar](50) NULL,
	[tilvaskun] [varchar](50) NULL,
	[tilvaskunx] [varchar](50) NULL,
	[tilvaskun2x] [varchar](50) NULL,
	[kansalr2] [varchar](50) NULL,
	[alvv] [varchar](50) NULL,
	[allk] [varchar](50) NULL,
	[olotamm] [varchar](50) NULL,
	[olosyys] [varchar](50) NULL,
	[rahlahde] [varchar](50) NULL,
	[fte] [varchar](50) NULL,
	[alvv_kksek] [varchar](50) NULL,
	[alvv_kksek_lasna] [varchar](50) NULL,
	[alvv_sek] [varchar](50) NULL,
	[alvv_sek_lasna] [varchar](50) NULL,
	[alvv_kk] [varchar](50) NULL,
	[alvv_kk_lasna] [varchar](50) NULL,
	[alvv_opa] [varchar](50) NULL,
	[alvv_opa_lasna] [varchar](50) NULL,
	[lkm] [varchar](50) NULL,
	[opyht0] [varchar](50) NULL,
	[opyht14] [varchar](50) NULL,
	[opyht29] [varchar](50) NULL,
	[opyht44] [varchar](50) NULL,
	[opyht59] [varchar](50) NULL,
	[opyht74] [varchar](50) NULL,
	[opyht89] [varchar](50) NULL,
	[opyht104] [varchar](50) NULL,
	[opyht119] [varchar](50) NULL,
	[opyht120] [varchar](50) NULL,
	[op55] [varchar](50) NULL,
	[opes] [varchar](50) NULL,
	[opek] [varchar](50) NULL,
	[opker] [varchar](50) NULL,
	[koultyp] [varchar](50) NULL,
	[kkieli] [varchar](50) NULL,
	[lasnalk] [varchar](50) NULL,
	[poissalk] [varchar](50) NULL,
	[oplaaj] [varchar](50) NULL,
	[kirtu1v] [varchar](50) NULL,
	[kirtu1k] [varchar](50) NULL,
	[ensisop] [varchar](50) NULL,
	[tilmaa] [varchar](50) NULL,
	[kk] [varchar](50) NULL,
	[fuksi] [varchar](50) NULL,
	[opoikv] [varchar](50) NULL,
	[om] [varchar](50) NULL,
	[opkelp] [varchar](50) NULL,
	[avo] [varchar](50) NULL,
	[ltop] [varchar](50) NULL,
	[oha] [varchar](50) NULL,
	[Column 60] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tktutk2016OKMEnnakko_AMK]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tktutk2016OKMEnnakko_AMK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tktutk2016OKMEnnakko_AMK](
	[tilv] [varchar](50) NULL,
	[aineisto] [varchar](50) NULL,
	[lahde] [varchar](50) NULL,
	[tunn] [varchar](50) NULL,
	[jarj] [varchar](50) NULL,
	[koulk] [varchar](50) NULL,
	[kkun] [varchar](50) NULL,
	[sp] [varchar](50) NULL,
	[aikielir1x] [varchar](50) NULL,
	[syntv] [varchar](50) NULL,
	[tilvaskun] [varchar](50) NULL,
	[tilvaskunx] [varchar](50) NULL,
	[kansalr2] [varchar](50) NULL,
	[alvv] [varchar](50) NULL,
	[allk] [varchar](50) NULL,
	[suorv] [varchar](50) NULL,
	[suorlk] [varchar](50) NULL,
	[rahlahde] [varchar](50) NULL,
	[alvv_kksek] [varchar](50) NULL,
	[alvv_kksek_lasna] [varchar](50) NULL,
	[alvv_sek] [varchar](50) NULL,
	[alvv_sek_lasna] [varchar](50) NULL,
	[alvv_kk] [varchar](50) NULL,
	[alvv_kk_lasna] [varchar](50) NULL,
	[alvv_opa] [varchar](50) NULL,
	[alvv_opa_lasna] [varchar](50) NULL,
	[lkm] [varchar](50) NULL,
	[koultyp] [varchar](50) NULL,
	[kkieli] [varchar](50) NULL,
	[lasnalk] [varchar](50) NULL,
	[poissalk] [varchar](50) NULL,
	[oplaaj] [varchar](50) NULL,
	[kirtu1v] [varchar](50) NULL,
	[kirtu1k] [varchar](50) NULL,
	[opyhtamk] [varchar](50) NULL,
	[opylamamk] [varchar](50) NULL,
	[opmuuamk] [varchar](50) NULL,
	[opoamk] [varchar](50) NULL,
	[opmamk] [varchar](50) NULL,
	[opyliopamk] [varchar](50) NULL,
	[opulkomamk] [varchar](50) NULL,
	[tilmaa] [varchar](50) NULL,
	[om] [varchar](50) NULL,
	[opkelp] [varchar](50) NULL,
	[opyhtyo] [varchar](50) NULL,
	[opulkyo] [varchar](50) NULL,
	[opmuuyo] [varchar](50) NULL,
	[opoylio] [varchar](50) NULL,
	[opaylio] [varchar](50) NULL,
	[opmylio] [varchar](50) NULL,
	[opamkyo] [varchar](50) NULL,
	[ltop] [varchar](50) NULL,
	[opmopa] [varchar](50) NULL,
	[luontipvm] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tktutk2016OKMEnnakko_YO]    Script Date: 21.6.2017 11:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tktutk2016OKMEnnakko_YO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tktutk2016OKMEnnakko_YO](
	[tilv] [varchar](50) NULL,
	[aineisto] [varchar](50) NULL,
	[lahde] [varchar](50) NULL,
	[tunn] [varchar](50) NULL,
	[jarj] [varchar](50) NULL,
	[koulk] [varchar](50) NULL,
	[kkun] [varchar](50) NULL,
	[sp] [varchar](50) NULL,
	[aikielir1x] [varchar](50) NULL,
	[syntv] [varchar](50) NULL,
	[tilvaskun] [varchar](50) NULL,
	[tilvaskunx] [varchar](50) NULL,
	[kansalr2] [varchar](50) NULL,
	[alvv] [varchar](50) NULL,
	[allk] [varchar](50) NULL,
	[suorv] [varchar](50) NULL,
	[suorlk] [varchar](50) NULL,
	[rahlahde] [varchar](50) NULL,
	[alvv_kksek] [varchar](50) NULL,
	[alvv_kksek_lasna] [varchar](50) NULL,
	[alvv_sek] [varchar](50) NULL,
	[alvv_sek_lasna] [varchar](50) NULL,
	[alvv_kk] [varchar](50) NULL,
	[alvv_kk_lasna] [varchar](50) NULL,
	[alvv_opa] [varchar](50) NULL,
	[alvv_opa_lasna] [varchar](50) NULL,
	[lkm] [varchar](50) NULL,
	[koultyp] [varchar](50) NULL,
	[kkieli] [varchar](50) NULL,
	[lasnalk] [varchar](50) NULL,
	[poissalk] [varchar](50) NULL,
	[oplaaj] [varchar](50) NULL,
	[kirtu1v] [varchar](50) NULL,
	[kirtu1k] [varchar](50) NULL,
	[opyhtamk] [varchar](50) NULL,
	[opylamamk] [varchar](50) NULL,
	[opmuuamk] [varchar](50) NULL,
	[opoamk] [varchar](50) NULL,
	[opmamk] [varchar](50) NULL,
	[opyliopamk] [varchar](50) NULL,
	[opulkomamk] [varchar](50) NULL,
	[tilmaa] [varchar](50) NULL,
	[om] [varchar](50) NULL,
	[opkelp] [varchar](50) NULL,
	[opyhtyo] [varchar](50) NULL,
	[opulkyo] [varchar](50) NULL,
	[opmuuyo] [varchar](50) NULL,
	[opoylio] [varchar](50) NULL,
	[opaylio] [varchar](50) NULL,
	[opmylio] [varchar](50) NULL,
	[opamkyo] [varchar](50) NULL,
	[ltop] [varchar](50) NULL,
	[opmopa] [varchar](50) NULL,
	[luontipvm] [varchar](50) NULL
) ON [PRIMARY]
END
GO

USE [ANTERO]