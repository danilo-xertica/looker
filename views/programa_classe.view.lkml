view: programa_classe {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_refined.programa_classe` ;;

  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: teste {
    type: string
    sql: COALESCE(${TABLE}.programa, ${TABLE}.municipio) ;;
  }
  dimension: uh_entregue {
    type: number
    sql: ${TABLE}.uh_entregue ;;
  }
  measure: count {
    type: count
  }
  dimension: programa_sts {
    type: number
    sql:
      CASE
        WHEN ${TABLE}.programa = 'Miserável'           THEN '1'
        WHEN ${TABLE}.programa = 'Pobre'               THEN '2'
        WHEN ${TABLE}.programa = 'Vulnerável'          THEN '3'
        WHEN ${TABLE}.programa = 'Classe Média Baixa'  THEN '4'
        WHEN ${TABLE}.programa = 'Classe Média'        THEN '5'
        WHEN ${TABLE}.programa = 'Classe Média Alta'   THEN '6'
        WHEN ${TABLE}.programa = 'PPP'                 THEN '7'
        WHEN ${TABLE}.programa = 'PPI'                 THEN '8'
        WHEN ${TABLE}.programa = 'FDS'                 THEN '9'
        WHEN ${TABLE}.programa = 'FAR'                 THEN '10'
        WHEN ${TABLE}.programa = 'CCI'                 THEN '11'
        ELSE 'Desconhecido'
      END ;;
  }
  dimension: latLong {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }
}
