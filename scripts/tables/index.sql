CREATE TABLE tb_municipios(
    cod_municipio varchar(11),
    nome_municipio varchar(11),
    uf varchar(11),
    cd_municipio_ibge varchar(11)
);

CREATE TABLE tb_escolaridade(
    id_familia varchar,
    id_pessoa varchar,
    ind_frequenta_escola_memb numeric,
    cod_concluiu_frequentou_memb
);