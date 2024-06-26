view: cdhu_credito_imobiliario_shs {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_raw.cdhu_credito_imobiliario_shs` ;;

  dimension: apf {
    type: string
    sql: ${TABLE}.apf ;;
  }
  dimension: cod_ibge_texto {
    type: string
    sql: ${TABLE}.cod_ibge_texto ;;
  }
  dimension: data_aporte {
    type: string
    sql: ${TABLE}.data_aporte ;;
  }
  dimension: empreendimento {
    type: string
    sql: ${TABLE}.empreendimento ;;
  }
  dimension: empregos_gerados {
    type: string
    sql: ${TABLE}.empregos_gerados ;;
  }
  dimension: investimento_total_uh_em_producao {
    type: string
    sql: ${TABLE}.investimento_total_uh_em_producao ;;
  }
  dimension: investimento_total_uh_entregue {
    type: string
    sql: ${TABLE}.investimento_total_uh_entregue ;;
  }
  dimension: investimento_total_viabilizados {
    type: string
    sql: ${TABLE}.investimento_total_viabilizados ;;
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
  dimension: outras_fontes_uh_em_producao {
    type: string
    sql: ${TABLE}.outras_fontes_uh_em_producao ;;
  }
  dimension: outras_fontes_uh_entregue {
    type: string
    sql: ${TABLE}.outras_fontes_uh_entregue ;;
  }
  dimension: outras_fontes_viabilizados {
    type: string
    sql: ${TABLE}.outras_fontes_viabilizados ;;
  }
  dimension: prev_entrega_uh {
    type: string
    sql: ${TABLE}.prev_entrega_uh ;;
  }
  dimension: prev_inicio {
    type: string
    sql: ${TABLE}.prev_inicio ;;
  }
  dimension: prev_termino {
    type: string
    sql: ${TABLE}.prev_termino ;;
  }
  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }
  dimension: qtd_pessoas_beneficiadas {
    type: string
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
  dimension: uh_em_producao {
    type: string
    sql: ${TABLE}.uh_em_producao ;;
  }
  dimension: uh_entregue {
    type: number
    sql:${TABLE}.uh_entregue;;
  }

  dimension: uh_lotes_viabilizados {
    type: number
    sql: ${TABLE}.uh_lotes_viabilizados ;;
  }
  dimension: valor_aporte_uh_em_producao {
    type: string
    sql: ${TABLE}.valor_aporte_uh_em_producao ;;
  }
  dimension: valor_aporte_uh_entregue {
    type: string
    sql: ${TABLE}.valor_aporte_uh_entregue ;;
  }
  dimension: valor_aporte_viabilizados {
    type: string
    sql: ${TABLE}.valor_aporte_viabilizados ;;
  }
  measure: count {
    type: count
  }
}
