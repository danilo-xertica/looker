view: atendimento_habitacional_detalhado {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_refined.vwPlanilha_Atendimento_Hab_Union` ;;

  dimension: modalidade {
    type: string
    sql: ${TABLE}.modalidade ;;
  }

  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
  }

  dimension: municipio {
    type: string
    sql: UPPER(${TABLE}.municipio);;
  }

  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }

  dimension: uh_entregue {
    type: number
    sql: ${TABLE}.uh_entregue ;;
  }

  dimension: uh_lotes_viabilizados {
    type: number
    sql: ${TABLE}.uh_lotes_viabilizados ;;
  }

  dimension: investimento_total_uh_entregue {
    type: number
    sql: ${TABLE}.investimento_total_uh_entregue ;;
  }

  dimension: uh_lotes {
    type: number
    sql: ${TABLE}.uh_lotes ;;
  }

  dimension: valor_aporte_uh_entregue {
    type: number
    sql: ${TABLE}.valor_aporte_uh_entregue ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: geolocation {
    type:  location
    sql_latitude: ${latitude};;
    sql_longitude: ${longitude};;
  }
}
