view: ubs_est_sp {
  sql_table_name: `xertica-gen-ai-br.CDHU_RAW.UBS_EST_SP` ;;

  dimension: co_cep {
    type: number
    sql: ${TABLE}.co_cep ;;
  }
  dimension: co_cnes {
    type: number
    sql: ${TABLE}.co_cnes ;;
  }
  dimension: co_municip {
    type: number
    sql: ${TABLE}.co_municip ;;
  }
  dimension: co_naturez {
    type: number
    sql: ${TABLE}.co_naturez ;;
  }
  dimension: co_sub_tip {
    type: string
    sql: ${TABLE}.co_sub_tip ;;
  }
  dimension: co_tp_unid {
    type: number
    value_format_name: id
    sql: ${TABLE}.co_tp_unid ;;
  }
  dimension: f_coord {
    type: string
    sql: ${TABLE}.f_coord ;;
  }
  dimension: lat {
    type: string
    sql: ${TABLE}.Lat ;;
  }
  dimension: long {
    type: string
    sql: ${TABLE}.Long ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: natureza_1 {
    type: string
    sql: ${TABLE}.natureza_1 ;;
  }
  dimension: natureza_j {
    type: string
    sql: ${TABLE}.natureza_j ;;
  }
  dimension: no_bairro {
    type: string
    sql: ${TABLE}.no_bairro ;;
  }
  dimension: no_complem {
    type: string
    sql: ${TABLE}.no_complem ;;
  }
  dimension: no_fantasi {
    type: string
    sql: ${TABLE}.no_fantasi ;;
  }
  dimension: no_logrado {
    type: string
    sql: ${TABLE}.no_logrado ;;
  }
  dimension: no_razao_s {
    type: string
    sql: ${TABLE}.no_razao_s ;;
  }
  dimension: nu_enderec {
    type: string
    sql: ${TABLE}.nu_enderec ;;
  }
  dimension: sub_tipo {
    type: string
    sql: ${TABLE}.sub_tipo ;;
  }
  dimension: tipo_seade {
    type: string
    sql: ${TABLE}.TipoSeade ;;
  }
  dimension: tp_unidade {
    type: string
    sql: ${TABLE}.tp_unidade ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${long};;
  }

  measure: count {
    type: count
  }
}
