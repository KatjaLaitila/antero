--
--  create table f_amk_rekrytointi_valitut
--

USE [ANTERO]
GO

IF NOT EXISTS
	(SELECT * FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA='dw'
	AND TABLE_NAME='f_amk_rekrytointi_valitut')

BEGIN
CREATE TABLE [dw].[f_amk_rekrytointi_valitut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vuosi] [int] NULL,
	[d_amk_id] [int] NOT NULL,
	[d_ek_nimike_id] [int] NOT NULL,
	[d_amk_tehtavaryhma_id] [int] NOT NULL,
	[d_amk_tehtavanjaottelu_id] [int] NOT NULL,
	[d_nimitystapa_id] [int] NOT NULL,
	[d_amk_kelpoisuus_tutkinto_id] [int] NOT NULL,
	[d_amk_kelpoisuus_tyokokemus_id] [int] NOT NULL,
	[d_amk_kelpoisuus_opettajankoulutusi_d] [int] NOT NULL,
	[d_tieteenala_id] [int] NOT NULL,
	[d_amk_paatoimiset_opettajat_id] [int] NOT NULL,
	[d_koulutusluokitus_id] [int] NOT NULL,
	[d_tutkinnon_taso_id] [int] NOT NULL,
	[d_tohtorintutkinnon_suoritusmaa_id] [int] NOT NULL,
	[d_amk_toimipisteen_toimipaikka_id] [int] NOT NULL,
	[d_organisaation_alayksikko_id] [int] NOT NULL,
	[d_sukupuoli_id] [int] NOT NULL,
	[d_kansalaisuus_id] [int] NOT NULL,
	[d_aidinkieli_id] [int] NOT NULL,
	[d_ika_id] [int] NOT NULL,
	[d_arvokysymys_id] [int] NOT NULL,
	[d_arvovastaus_id] [int] NOT NULL,
	[loadtime] [datetime] NULL,
	[source] [nvarchar](100) NULL,
	[username] [nvarchar](30) NULL,
 CONSTRAINT [PK__f_amk_rekrytointi_valitut] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

END
GO

ALTER TABLE [dw].[f_amk_rekrytointi_valitut] ADD  CONSTRAINT [DF_f_amk_rekrytointi_valitut_loadtime]  DEFAULT (getdate()) FOR [loadtime]
GO

ALTER TABLE [dw].[f_amk_rekrytointi_valitut] ADD  CONSTRAINT [DF_f_amk_rekrytointi_valitut_username]  DEFAULT (suser_sname()) FOR [username]
GO
