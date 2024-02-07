view: area_risco_teste5 {
  sql_table_name: `xertica-gen-ai-br.cdhu.area_risco_teste5` ;;

  dimension: amplit_alt {
    type: number
    sql: ${TABLE}.AMPLIT_ALT ;;
  }
  dimension: amplit_n {
    type: number
    sql: ${TABLE}.AMPLIT_N ;;
  }
  dimension: c_vert_med {
    type: number
    sql: ${TABLE}.C_VERT_MED ;;
  }
  dimension: c_vert_n {
    type: number
    sql: ${TABLE}.C_VERT_N ;;
  }
  dimension: codigo_n1 {
    type: string
    sql: ${TABLE}.CODIGO_N1 ;;
  }
  dimension: codigo_n2 {
    type: string
    sql: ${TABLE}.CODIGO_N2 ;;
  }
  dimension: codigo_n3 {
    type: string
    sql: ${TABLE}.CODIGO_N3 ;;
  }
  dimension: ddren_med {
    type: number
    sql: ${TABLE}.DDREN_MED ;;
  }
  dimension: ddren_n {
    type: number
    sql: ${TABLE}.DDREN_N ;;
  }
  dimension: decliv_med {
    type: number
    sql: ${TABLE}.DECLIV_MED ;;
  }
  dimension: decliv_n {
    type: number
    sql: ${TABLE}.DECLIV_N ;;
  }
  dimension: e_hidr_med {
    type: number
    sql: ${TABLE}.E_HIDR_MED ;;
  }
  dimension: e_hidr_n {
    type: number
    sql: ${TABLE}.E_HIDR_N ;;
  }
  dimension: foliacao {
    type: number
    sql: ${TABLE}.FOLIACAO ;;
  }
  dimension: geol_cprm {
    type: string
    sql: ${TABLE}.GEOL_CPRM ;;
  }
  dimension: geol_rev {
    type: string
    sql: ${TABLE}.GEOL_rev ;;
  }
  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
  }
  dimension: nivel_1 {
    type: string
    sql: ${TABLE}.NIVEL_1 ;;
  }
  dimension: nivel_2 {
    type: string
    sql: ${TABLE}.NIVEL_2 ;;
  }
  dimension: nivel_3 {
    type: string
    sql: ${TABLE}.NIVEL_3 ;;
  }
  dimension: nivel_4 {
    type: string
    sql: ${TABLE}.NIVEL_4 ;;
  }
  dimension: nome_unid {
    type: string
    map_layer_name: escoinund
    sql: ${TABLE}.NOME_UNID ;;
  }
  dimension: p_esc_clas {
    type: string
    sql: ${TABLE}.P_ESC_CLAS ;;
  }
  dimension: p_esc_ind {
    type: number
    sql: ${TABLE}.P_ESC_IND ;;
  }
  dimension: p_inu_clas {
    type: string
    sql: ${TABLE}.P_INU_CLAS ;;
  }
  dimension: p_inu_ind {
    type: number
    sql: ${TABLE}.P_INU_IND ;;
  }
  dimension: wkt {
    type: string
    sql: ${TABLE}.WKT ;;
  }

  measure: count {
    type: count
  }
}
