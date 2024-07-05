view: gov_base_amostra_pessoa_join {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_refined.gov_base_amostra_pessoa` ;;

  dimension: afastado_trab {
    type: string
    sql: ${TABLE}.afastado_trab ;;
  }
  dimension: agricultura_trab {
    type: string
    sql: ${TABLE}.agricultura_trab ;;
  }
  dimension: ano_serie_frequenta {
    type: string
    sql: ${TABLE}.ano_serie_frequenta ;;
  }
  dimension: ano_serie_frequentou {
    type: string
    sql: ${TABLE}.ano_serie_frequentou ;;
  }
  dimension: cd_ibge {
    type: string
    sql: ${TABLE}.cd_ibge ;;
  }
  dimension: certidao_registrada {
    type: string
    sql: ${TABLE}.certidao_registrada ;;
  }
  dimension: classf {
    type: string
    sql: ${TABLE}.classf ;;
  }
  dimension: cod_principal_trab_memb {
    type: string
    sql: ${TABLE}.cod_principal_trab_memb ;;
  }
  dimension: concluiu_frequentou {
    type: string
    sql: ${TABLE}.concluiu_frequentou ;;
  }
  dimension: curso_frequenta {
    type: string
    sql: ${TABLE}.curso_frequenta ;;
  }
  dimension: curso_frequentou {
    type: string
    sql: ${TABLE}.curso_frequentou ;;
  }
  dimension: deficiencia {
    type: string
    sql: ${TABLE}.deficiencia ;;
  }
  dimension: escola_local {
    type: string
    sql: ${TABLE}.escola_local ;;
  }
  dimension: estrato {
    type: string
    sql: ${TABLE}.estrato ;;
  }
  dimension: frequenta_escola {
    type: string
    sql: ${TABLE}.frequenta_escola ;;
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
  dimension: local_nascimento {
    type: string
    sql: ${TABLE}.local_nascimento ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: parentesco_rf_pessoa {
    type: string
    sql: ${TABLE}.parentesco_rf_pessoa ;;
  }
  dimension: peso_fam {
    type: string
    sql: ${TABLE}.peso_fam ;;
  }
  dimension: peso_pes {
    type: string
    sql: ${TABLE}.peso_pes ;;
  }
  dimension: principal_trab {
    type: string
    sql: ${TABLE}.principal_trab ;;
  }
  dimension: qtd_meses_12_meses_memb {
    type: string
    sql: ${TABLE}.qtd_meses_12_meses_memb ;;
  }
  dimension: raca_cor {
    type: string
    sql: ${TABLE}.raca_cor ;;
  }
  dimension: sabe_ler_escrever {
    type: string
    sql: ${TABLE}.sabe_ler_escrever ;;
  }
  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }
  dimension: trabalho_12_meses {
    type: string
    sql: ${TABLE}.trabalho_12_meses ;;
  }
  dimension: trabalhou {
    type: string
    sql: ${TABLE}.trabalhou ;;
  }
  dimension: val_outras_rendas_memb {
    type: number
    sql: CAST(${TABLE}.val_outras_rendas_memb AS NUMERIC) ;;
  }
  dimension: val_remuner_emprego_memb {
    type: number
    sql: CAST(${TABLE}.val_remuner_emprego_memb AS NUMERIC) ;;
  }
  dimension: val_renda_aposent_memb {
    type: number
    sql: CAST(${TABLE}.val_renda_aposent_memb AS NUMERIC) ;;
  }
  dimension: val_renda_bruta_12_meses_memb {
    type: number
    sql: CAST(${TABLE}.val_renda_bruta_12_meses_memb AS NUMERIC) ;;
  }
  dimension: val_renda_doacao_memb {
    type: number
    sql: CAST(${TABLE}.val_renda_doacao_memb AS NUMERIC) ;;
  }
  dimension: val_renda_pensao_alimen_memb {
    type: number
    sql: CAST(${TABLE}.val_renda_pensao_alimen_memb AS NUMERIC) ;;
  }
  dimension: val_renda_seguro_desemp_memb {
    type: number
    sql: CAST(${TABLE}.val_renda_seguro_desemp_memb AS NUMERIC) ;;
  }

  measure: total_renda {
    type: number
    sql: ${val_remuner_emprego_memb} + ${val_renda_doacao_memb} + ${val_renda_aposent_memb} + ${val_renda_seguro_desemp_memb} + ${val_renda_pensao_alimen_memb} + ${val_outras_rendas_memb} ;;
  }

  measure: media_salario {
    type: average
    sql: ${total_renda} ;;
  }
  measure: count {
    type: count
  }
}
