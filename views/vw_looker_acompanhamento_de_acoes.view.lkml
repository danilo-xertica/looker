view: vw_looker_acompanhamento_de_acoes {
  sql_table_name: `xertica-gen-ai-br.TRUSTED_CDHU.vwLooker_AcompanhamentoDeAcoes` ;;

  dimension: concluido_invest_estadual_milhoes {
    type: string
    sql: ${TABLE}.Concluido_InvestEstadual_Milhoes ;;
  }
  dimension: concluido_invest_total_milhoes {
    type: string
    sql: ${TABLE}.Concluido_InvestTotal_Milhoes ;;
  }
  dimension: concluido_uhs_dom {
    type: string
    sql: ${TABLE}.Concluido_uhs_dom ;;
  }
  dimension: em_planejamento_invest_estadual_milhoes {
    type: string
    sql: ${TABLE}.EmPlanejamento_InvestEstadual_Milhoes ;;
  }
  dimension: em_planejamento_invest_total_milhoes {
    type: string
    sql: ${TABLE}.EmPlanejamento_InvestTotal_Milhoes ;;
  }
  dimension: em_planejamento_uhs_dom {
    type: string
    sql: ${TABLE}.EmPlanejamento_uhs_dom ;;
  }
  dimension: em_prod_invest_estadual_milhoes {
    type: string
    sql: ${TABLE}.EmProd_InvestEstadual_Milhoes ;;
  }
  dimension: em_prod_invest_total_milhoes {
    type: string
    sql: ${TABLE}.EmProd_InvestTotal_Milhoes ;;
  }
  dimension: em_prod_uhs_dom {
    type: string
    sql: ${TABLE}.EmProd_uhs_dom ;;
  }
  dimension: entregues2324_invest_estadual_milhoes {
    type: number
    sql: ${TABLE}.Entregues2324_InvestEstadual_Milhoes ;;
  }
  dimension: entregues2324_invest_total_milhoes {
    type: number
    sql: ${TABLE}.Entregues2324_InvestTotal_Milhoes ;;
  }
  dimension: entregues2324_uhs_dom {
    type: number
    sql: ${TABLE}.Entregues2324_uhs_dom ;;
  }
  dimension: itens_habitacionais {
    type: string
    sql: ${TABLE}.Itens_Habitacionais ;;
  }
  dimension: lic_cont_conv_invest_estadual_milhoes {
    type: string
    sql: ${TABLE}.LicContConv_InvestEstadual_Milhoes ;;
  }
  dimension: lic_cont_conv_invest_total_milhoes {
    type: string
    sql: ${TABLE}.LicContConv_InvestTotal_Milhoes ;;
  }
  dimension: lic_cont_conv_uhs_dom {
    type: string
    sql: ${TABLE}.LicContConv_uhs_dom ;;
  }
  dimension: meta_ppa_2024_2027 {
    type: string
    sql: ${TABLE}.META_PPA_2024_2027 ;;
  }
  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }
  measure: count {
    type: count
  }
}
