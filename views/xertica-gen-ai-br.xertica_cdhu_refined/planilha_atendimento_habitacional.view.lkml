view: planilha_atendimento_habitacional {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_refined.planilha_atendimento_habitacional` ;;

  dimension: invest_estadual_milhoes {
    type: number
    sql: ${TABLE}.InvestEstadual_Milhoes ;;
  }
  dimension: invest_total_milhoes {
    type: number
    sql: ${TABLE}.InvestTotal_Milhoes ;;
  }
  dimension: itens_habitacionais {
    type: string
    sql: ${TABLE}.Itens_Habitacionais ;;
  }
  dimension: itens_habitacionais_sort {
    type: string
    sql: ${TABLE}.Itens_Habitacionais_Sort ;;
  }
  dimension: meta_2024_2027 {
    type: number
    sql: ${TABLE}.Meta_2024_2027 ;;
  }
  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }
  dimension: modalidade_sort {
    type: string
    sql: ${TABLE}.Modalidade_Sort ;;
  }
  dimension: responsavel {
    type: string
    sql: ${TABLE}.Responsavel ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: telefone {
    type: string
    sql: ${TABLE}.Telefone ;;
  }
  dimension: uhs_dom {
    type: number
    sql: ${TABLE}.uhs_dom ;;
  }
  dimension: vlr_referencia_ago_23 {
    type: number
    sql: ${TABLE}.Vlr_Referencia_ago_23 ;;
  }
  measure: count {
    type: count
  }
}
