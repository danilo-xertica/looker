view: atendimento_habitacional_detalhado {
  derived_table: {
    sql:
       SELECT programa,
              cod_ibge_texto,
              municipio,
              uh_entregue,
              status
       FROM `xertica-gen-ai-br.xertica_cdhu_refined.vwCredito_Imobiliario_SHS`

      UNION ALL
      SELECT programa,
      cod_ibge_texto,
      municipio,
      uh_lotes,
      status
      FROM `xertica-gen-ai-br.xertica_cdhu_refined.vwCDHU_Novas_PPPs`

      UNION ALL
      SELECT programa,
      cod_ibge_texto,
      municipio,
      uh_lotes_viabilizados,
      status

      FROM `xertica-gen-ai-br.xertica_cdhu_refined.vwCredito_Imobiliario_SHS`
      WHERE programa != 'CCI';;
  }

  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio;;
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

  dimension: uh_lotes {
    type: number
    sql: ${TABLE}.uh_lotes ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

}
