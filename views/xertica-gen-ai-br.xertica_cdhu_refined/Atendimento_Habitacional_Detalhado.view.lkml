view: atendimento_habitacional_detalhado {
  derived_table: {
    sql:SELECT
  'Aporte + Apoio ao Crédito' as modalidade,
  programa,
  cod_ibge_texto,
  a.municipio,
  uh_entregue,
  valor_aporte_uh_entregue,
  investimento_total_uh_entregue,
  b.latitude,
  b.longitude,
  IF(uh_entregue > 0, 'ENTREGUE','') as status
FROM
  `xertica-gen-ai-br.xertica_cdhu_refined.vwCredito_Imobiliario_SHS` a
LEFT JOIN
  `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON
  a.cod_ibge_texto = b.id_municipio
UNION ALL
SELECT
  'Aporte + Apoio ao Crédito' as modalidade,
  programa,
  a.cod_ibge_texto,
  a.municipio,
  uh_lotes,
  valor_do_aporte,
  investimento_total,
  b.latitude,
  b.longitude,
  status
FROM
  `xertica-gen-ai-br.xertica_cdhu_refined.vwCDHU_Novas_PPPs` a
LEFT JOIN
  `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON
  a.cod_ibge_texto = b.id_municipio
UNION ALL
SELECT
  'Aporte + Apoio ao Crédito' as modalidade,
  programa,
  cod_ibge_texto,
  a.municipio,
  uh_lotes_viabilizados,
  valor_aporte_viabilizados,
  investimento_total_viabilizados,
  b.latitude,
  b.longitude,
  status
FROM
  `xertica-gen-ai-br.xertica_cdhu_refined.vwCredito_Imobiliario_SHS` a
LEFT JOIN
  `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON
  a.cod_ibge_texto = b.id_municipio
WHERE
programa != 'CCI'
UNION ALL
SELECT
  'Aporte + Apoio ao Crédito' as modalidade,
  programa,
  cod_ibge_texto,
  a.municipio,
  uh_em_producao,
  valor_aporte_uh_em_producao,
  investimento_total_viabilizados,
  b.latitude,
  b.longitude,
  IF(uh_em_producao > 0, 'EM PRODUÇÃO','') as status
FROM
  `xertica-gen-ai-br.xertica_cdhu_refined.vwCredito_Imobiliario_SHS` a
LEFT JOIN
  `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON
  a.cod_ibge_texto = b.id_municipio;;
}

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
