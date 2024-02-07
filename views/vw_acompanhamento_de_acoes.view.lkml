view: vw_acompanhamento_de_acoes {
  sql_table_name: `xertica-gen-ai-br.TRUSTED_CDHU.vwAcompanhamentoDeAcoes` ;;

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
  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: uhs_dom {
    type: number
    sql: ${TABLE}.uhs_dom ;;
  }
  measure: count {
    type: count
  }
}
