/********** ATIVIDADE 2 **********/
CREATE TABLE fies_csv (
	est CHAR(3), 
	mun VARCHAR(30), 
	cod_mant VARCHAR(10), 
	cnpj_mant VARCHAR(20), 
	mant VARCHAR(150), 
	mun_mant VARCHAR(20), 
	cod_ies VARCHAR(10),
	no_ies VARCHAR(100),
	mun_ies VARCHAR(20),
	proc INTEGER,
	contrato INTEGER,
	cod_adit VARCHAR(10),
	cod_agfin VARCHAR(10),
	agfin VARCHAR(50),
	sg_agfin CHAR(4),
	nu_mes INTEGER, 
	nu_sem INTEGER, 
	nu_ano INTEGER, 
	vl_mens REAL, 
	insc INTEGER, 
	tp_fianca CHAR(2), 
	ano_insc CHAR(10), 
	p_prouni CHAR(5), 
	p_solicit CHAR(7), 
	vl_repass CHAR(10), 
	dt_nasc DATE, 
	st_def CHAR(2), 
	st_escola CHAR(2), 
	cod_cidade VARCHAR(10), 
	sg_sexo CHAR(2), 
	sexo VARCHAR(20), 
	cod_estcivil VARCHAR(10), 
	est_civil VARCHAR(20), 
	sg_raca CHAR(2), 
	raca VARCHAR(10), 
	insc_ext INTEGER, 
	contrato_ext INTEGER, 
	cod_ies_ext VARCHAR(10), 
	ies_ext VARCHAR(100), 
	cod_campus VARCHAR(10), 
	campus VARCHAR(100), 
	p_finan INTEGER, 
	vlmens_ext REAL, 
	qtsem_fin VARCHAR(10), 
	cod_adit_ext VARCHAR(10), 
	cod_curso VARCHAR(10), 
	curso VARCHAR(100), 
	cod_tpcurso VARCHAR(10), 
	tipo_curso VARCHAR(50), 
	cod_periodic VARCHAR(10), 
	periodic VARCHAR(50), 
	vl_semestre CHAR(10), 
	ano_proc INTEGER, 
	mes_proc INTEGER
)

/********** ATIVIDADE 3 **********/
COPY fies_csv (est, mun, cod_mant, cnpj_mant, mant, mun_mant, cod_ies, no_ies, mun_ies, proc, contrato, cod_adit, cod_agfin, agfin, sg_agfin, nu_mes, nu_sem, nu_ano, vl_mens, insc, tp_fianca, ano_insc, p_prouni, p_solicit, vl_repass, dt_nasc, st_def, st_escola, cod_cidade, sg_sexo, sexo, cod_estcivil, est_civil, sg_raca, raca, insc_ext, contrato_ext, cod_ies_ext, ies_ext, cod_campus, campus, p_finan, vlmens_ext, qtsem_fin, cod_adit_ext, cod_curso, curso, cod_tpcurso, tipo_curso, cod_periodic, periodic, vl_semestre, ano_proc, mes_proc)
FROM '/home/lucas/bkp_tb_fies_v3.csv'
DELIMITER ','
CSV HEADER;

/********** ATIVIDADE 4 **********/
SELECT vl_mens, curso, no_ies, est, mun FROM fies_csv WHERE (est='AL' OR est='BA' OR est='PB' OR est='PE' OR est='RN' OR est='CE' OR est='SE' OR est='MA' OR est='PI') AND nu_mes=09 AND nu_ano=2019 ORDER BY vl_mens DESC LIMIT 10


/********** ATIVIDADE 5 **********/
SELECT DISTINCT no_ies, p_solicit, est, mun_ies FROM fies_csv WHERE (est='AL' OR est='BA' OR est='PB' OR est='PE' OR est='RN' OR est='CE' OR est='SE' OR est='MA' OR est='PI') AND nu_mes=09 AND nu_ano=2019 ORDER BY p_solicit DESC LIMIT 10

/********** ATIVIDADE 6 **********/
SELECT DISTINCT cod_curso, curso, p_solicit, est, mun_ies FROM fies_csv WHERE (est='AL' OR est='BA' OR est='PB' OR est='PE' OR est='RN' OR est='CE' OR est='SE' OR est='MA' OR est='PI') AND nu_mes=09 AND nu_ano=2019 ORDER BY p_solicit DESC LIMIT 10

