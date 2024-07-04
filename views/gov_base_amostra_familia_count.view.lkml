view: gov_base_amostra_familia_count {
  derived_table: {
    sql:
       SELECT
          cd_ibge,
          municipio,
          count(id_familia) as familia_total,
          classificacao,
          latitude,
          longitude
        FROM
          `xertica-gen-ai-br.xertica_cdhu_refined.gov_base_amostra_familia`
        group by
          cd_ibge,
          municipio,
          classificacao,
          latitude,
          longitude;;
  }

  dimension: cd_ibge {
    type: string
    sql: ${TABLE}.cd_ibge ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: familia_total {
    type: number
    sql: ${TABLE}.familia_total ;;
  }

  dimension: classificacao {
    type: number
    sql: ${TABLE}.classificacao ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latLong{
    type: location
    sql_latitude: ${latitude};;
    sql_longitude: ${longitude};;
  }

}
