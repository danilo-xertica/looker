view: atendimento_habitacional_raw {
  derived_table: {
    sql:
       SELECT programa,
              cod_ibge_texto,
              uh_entregue,
              status
       FROM `xertica-gen-ai-br.xertica_cdhu_raw.cdhu_credito_imobiliario_shs`

       UNION ALL
       SELECT programa,
              cod_ibge_texto,
              uh_lotes,
              status
       FROM `xertica-gen-ai-br.xertica_cdhu_raw.cdhu_novas_ppps`

       UNION ALL
       SELECT programa,
              cod_ibge_texto,
              uh_lotes_viabilizados,
              status

       FROM `xertica-gen-ai-br.xertica_cdhu_raw.cdhu_credito_imobiliario_shs`
       WHERE programa != 'CCI';;
  }


  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
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

  measure: entregue_measure {
    type: sum
    sql: COALESCE(SAFE_CAST(REPLACE(${TABLE}.uh_entregue,'.','') AS NUMERIC), 0) ;;
  }


}
