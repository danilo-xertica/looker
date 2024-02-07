view: t_inund {
  sql_table_name: `xertica-gen-ai-br.TESTE_GIS.T_INUND` ;;

  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
  }
  dimension: geometry_wkt {
    type: string
    sql: ${TABLE}.geometry_wkt ;;
  }
  dimension: geometry_wkt_geo {
    type: string
    sql: ${TABLE}.geometry_wkt_geo ;;
  }
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }
  dimension: p_inu_clas {
    type: string
    map_layer_name: t_inund_layer
    sql: ${TABLE}.P_INU_CLAS ;;
  }
  dimension: shape_area {
    type: number
    sql: ${TABLE}.Shape_Area ;;
  }
  dimension: shape_leng {
    type: number
    sql: ${TABLE}.Shape_Leng ;;
  }
  measure: count {
    type: count
  }
}
