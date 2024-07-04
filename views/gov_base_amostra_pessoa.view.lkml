view: gov_base_amostra_pessoa {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_raw.gov_base_amostra_pessoa` ;;

  dimension: cd_ibge {
    type: string
    sql: ${TABLE}.cd_ibge ;;
  }
  dimension: classf {
    type: string
    sql: ${TABLE}.classf ;;
  }
  dimension: cod_afastado_trab_memb {
    type: string
    sql: ${TABLE}.cod_afastado_trab_memb ;;
  }
  dimension: cod_agricultura_trab_memb {
    type: string
    sql: ${TABLE}.cod_agricultura_trab_memb ;;
  }
  dimension: cod_ano_serie_frequenta_memb {
    type: string
    sql: ${TABLE}.cod_ano_serie_frequenta_memb ;;
  }
  dimension: cod_ano_serie_frequentou_memb {
    type: string
    sql: ${TABLE}.cod_ano_serie_frequentou_memb ;;
  }
  dimension: cod_certidao_registrada_pessoa {
    type: string
    sql: ${TABLE}.cod_certidao_registrada_pessoa ;;
  }
  dimension: cod_concluiu_frequentou_memb {
    type: string
    sql: ${TABLE}.cod_concluiu_frequentou_memb ;;
  }
  dimension: cod_curso_frequenta_memb {
    type: string
    sql: ${TABLE}.cod_curso_frequenta_memb ;;
  }
  dimension: cod_curso_frequentou_pessoa_memb {
    type: string
    sql: ${TABLE}.cod_curso_frequentou_pessoa_memb ;;
  }
  dimension: cod_deficiencia_memb {
    type: string
    sql: ${TABLE}.cod_deficiencia_memb ;;
  }
  dimension: cod_escola_local_memb {
    type: string
    sql: ${TABLE}.cod_escola_local_memb ;;
  }
  dimension: cod_local_nascimento_pessoa {
    type: string
    sql: ${TABLE}.cod_local_nascimento_pessoa ;;
  }
  dimension: cod_parentesco_rf_pessoa {
    type: string
    sql: ${TABLE}.cod_parentesco_rf_pessoa ;;
  }
  dimension: cod_principal_trab_memb {
    type: string
    sql: ${TABLE}.cod_principal_trab_memb ;;
  }
  dimension: cod_raca_cor_pessoa {
    type: string
    sql: ${TABLE}.cod_raca_cor_pessoa ;;
  }
  dimension: cod_sabe_ler_escrever_memb {
    type: string
    sql: ${TABLE}.cod_sabe_ler_escrever_memb ;;
  }
  dimension: cod_sexo_pessoa {
    type: string
    sql: ${TABLE}.cod_sexo_pessoa ;;
  }
  dimension: cod_trabalho_12_meses_memb {
    type: string
    sql: ${TABLE}.cod_trabalho_12_meses_memb ;;
  }
  dimension: cod_trabalhou_memb {
    type: string
    sql: ${TABLE}.cod_trabalhou_memb ;;
  }
  dimension: estrato {
    type: string
    sql: ${TABLE}.estrato ;;
  }
  dimension: id_familia {
    type: string
    sql: ${TABLE}.id_familia ;;
  }
  dimension: id_pessoa {
    type: string
    sql: ${TABLE}.id_pessoa ;;
  }
  dimension: idade {
    type: string
    sql: ${TABLE}.idade ;;
  }
  dimension: ind_frequenta_escola_memb {
    type: string
    sql: ${TABLE}.ind_frequenta_escola_memb ;;
  }
  dimension: peso_fam {
    type: string
    sql: ${TABLE}.peso_fam ;;
  }
  dimension: peso_pes {
    type: string
    sql: ${TABLE}.peso_pes ;;
  }
  dimension: qtd_meses_12_meses_memb {
    type: string
    sql: ${TABLE}.qtd_meses_12_meses_memb ;;
  }
  dimension: val_outras_rendas_memb {
    type: string
    sql: ${TABLE}.val_outras_rendas_memb ;;
  }
  dimension: val_remuner_emprego_memb {
    type: string
    sql: ${TABLE}.val_remuner_emprego_memb ;;
  }
  dimension: val_renda_aposent_memb {
    type: string
    sql: ${TABLE}.val_renda_aposent_memb ;;
  }
  dimension: val_renda_bruta_12_meses_memb {
    type: string
    sql: ${TABLE}.val_renda_bruta_12_meses_memb ;;
  }
  dimension: val_renda_doacao_memb {
    type: string
    sql: ${TABLE}.val_renda_doacao_memb ;;
  }
  dimension: val_renda_pensao_alimen_memb {
    type: string
    sql: ${TABLE}.val_renda_pensao_alimen_memb ;;
  }
  dimension: val_renda_seguro_desemp_memb {
    type: string
    sql: ${TABLE}.val_renda_seguro_desemp_memb ;;
  }
  measure: count {
    type: count
  }
}
