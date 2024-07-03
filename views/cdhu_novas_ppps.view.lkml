view: cdhu_novas_ppps {

  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_raw.cdhu_novas_ppps` ;;

  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
  }
  dimension: empreendimento {
    type: string
    sql: ${TABLE}.empreendimento ;;
  }
  dimension: empregos_gerados {
    type: number
    sql: ${TABLE}.empregos_gerados ;;
  }
  dimension: investimento_privado {
    type: number
    sql: ${TABLE}.investimento_privado ;;
  }
  dimension: investimento_total {
    type: number
    sql: ${TABLE}.investimento_total ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: nova_regionalizacao_cduh {
    type: string
    sql: ${TABLE}.nova_regionalizacao_cduh ;;
  }
  dimension: observacoes {
    type: string
    sql: ${TABLE}.observacoes ;;
  }
  dimension: prev_de_inicio {
    type: date
    sql: ${TABLE}.prev_de_inicio ;;
  }
  dimension: prev_de_termino {
    type: date
    sql: ${TABLE}.prev_de_termino ;;
  }
  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }
  dimension: qtd_pessoas_beneficiadas {
    type: number
    sql: ${TABLE}.qtd_pessoas_beneficiadas ;;
  }
  dimension: ra {
    type: string
    sql: ${TABLE}.ra ;;
  }
  dimension: rm_au {
    type: string
    sql: ${TABLE}.rm_au ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: uh_lotes {
    type: number
    sql: ${TABLE}.uh_lotes;;
  }

  dimension: valor_do_aporte {
    type: number
    sql: ${TABLE}.valor_do_aporte ;;
  }
  measure: count {
    type: count
  }
}
