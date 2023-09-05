CREATE TABLE TB_FAMILIA(
    cd_ibge varchar(7) NOT NULL,
    id_familia varchar(11) primary key,
    data_alteracao_fam timetz NOT NULL,
    vlr_renda_media_fam numeric(10, 9) NOT NULL,
    qtd_pessoas_fam int NOT NULL
);

CREATE TABLE tb_domicilio(
    id_familia varchar(11) NOT NULL,
    cod_local_domic_fam numeric(1) NOT NULL,
    cod_especie_domic_fam numeric(1) NOT NULL,
    qtd_comodos_domic_fam numeric(2) NOT NULL,
    qtd_dormitorios_domic_fam numeric(2) NOT NULL,
    cod_material_piso_fam numeric(1) NOT NULL,
    cod_material_domic_fam numeric(1) NOT NULL,
    cod_agua_canalizada_fam numeric(1) NOT NULL,
    cod_abaste_agua_domic_fam numeric(1) NOT NULL,
    cod_escoa_sanit_domic_fam numeric(1) NOT NULL,
    cod_destino_lixo_domic_fam numeric(1) NOT NULL,
    cod_iluminacao_domic_fam numeric(1) NOT NULL,
    cod_calcamento_domic_fam numeric(1) NOT NULL
);

CREATE TABLE tb_pessoa(
    id_familia varchar(11) NOT NULL,
    id_pessoa varchar(11) primary key,
    cod_sexo_pessoa numeric(1) NOT NULL,
    idade numeric(3) NOT NULL,  
    cod_parentesco_rf_pessoa numeric(2) NOT NULL,
    cod_raca_cor_pessoa numeric(2) NOT NULL,
    cod_local_nascimento_pessoa numeric(1) NOT NULL
);

CREATE TABLE tb_trabalho_remun(
    id_familia varchar(11) NOT NULL,
    id_pessoa varchar(11) NOT NULL,
    cod_principal_trab_memb numeric(1),
    val_remur_emprego_memb numeric(1),
    cod_trabalho_12_meses_memb numeric(2),
    qtd_meses_12_meses_memb numeric(2),
    val_renda_bruta_12_meses_memb numeric(5),
    val_renda_doacao_memb numeric(5),
    val_renda_seguro_desemp_memb numeric(5),
    val_renda_pensao_alimen_memb numeric(5),
    val_outras_rendas_memb numeric(5)
);

CREATE TABLE municipios(
    cod_municipio varchar(11) not null,
    nome_municipio varchar(50) null,
    uf varchar(2) not null,
    cod_municipio_ibge varchar(8) primary key
);

CREATE TABLE tb_escolaridade(
    id_familia varchar(11),
    id_pessoa varchar(11),
    ind_frequenta_escola_memb numeric(1),
    cod_concluiu_frequentou_memb numeric(1),
    cod_ano_serie_frequenta_memb numeric(2),
    cod_ano_serie_frequentou_memb numeric(2)
);