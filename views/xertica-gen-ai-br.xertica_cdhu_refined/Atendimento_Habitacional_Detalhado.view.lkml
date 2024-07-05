view: atendimento_habitacional_derivado {
  derived_table: {
    sql:------CAMADA SEMANTICA
SELECT
  --CCI
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
-- PPI (Novas PPs)
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
-- FAR, FDS, PPP, Preço Social
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
--CCI em Produção
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
  a.cod_ibge_texto = b.id_municipio
  --------------------------------------------------------------------------------------
  --Casa Paulista - Produção UH + Lote(2) entregues
union all

select
'Casa Paulista - Produção UH + Lote(2)' as modalidade
,CASE
  WHEN a.Subprog = 'LU' THEN 'CDHU - Lotes Urbanos'
  WHEN a.Subprog = 'PM' THEN 'CDHU - Unidades Habitacionais'
  WHEN a.Subprog = 'RH' THEN 'CDHU - Unidades Habitacionais'
  WHEN a.Subprog = 'SUB-50' THEN 'CDHU - Sub-50'
  WHEN a.Subprog = 'VD' THEN 'CDHU - Vida Digna'
  WHEN a.Subprog = 'VL' THEN 'CDHU - Vida Longa'
  WHEN a.Subprog = 'RH-CC' THEN 'CDHU - Carta de Crédito'
  WHEN a.Subprog = 'CCR' THEN 'CDHU - Carta de Crédito'
  WHEN a.Subprog = 'DOM' THEN 'CDHU - Urbanização'
  WHEN a.Subprog = 'UAP' THEN 'CDHU - Urbanização'
END programa
,a.cod_ibge_texto
,a.Municipio
,a.Total  AS uh_entregue
,(a.Total)*190000 AS valor_aporte_uh_entregue
,(a.Total)*190000 AS investimento_total_uh_entregue
,b.latitude
,b.longitude
,'ENTREGUE' as status
FROM `xertica-gen-ai-br.xertica_cdhu_refined.vwCDHU_Entregues`a
LEFT JOIN `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON a.cod_ibge_texto = b.id_municipio
where a.Subprog != 'LU'
union all
SELECT
replace(modalidade,'�','ç') as  modalidade
,programa
,cod_ibge_texto
,Municipio
,uh_entregue
,cast(valor_aporte_uh_entregue as int64) as valor_aporte_uh_entregue
,cast(investimento_total_uh_entregue as int64) as investimento_total_uh_entregue
,cast(latitude  as float64) as latitude
,cast(longitude as float64) as longitude
,status
FROM `xertica-gen-ai-br.xertica_cdhu_raw.Casa_Paulista_Chumbado_Entregues_NV`
UNION ALL
-----------------------------------------------------
--Casa Paulista - Produção UH + Lote(2) - CONCLUÍDO
SELECT
'Casa Paulista - Produção UH + Lote(2)' as modalidade
,a.programa
,a.Cod_Munic AS cod_ibge_texto
,a.Municipio
,a.Uhs_Em_Producao  AS uh_entregue
,(a.Uhs_Em_Producao)*190000 AS valor_aporte_uh_entregue
,(a.Uhs_Em_Producao)*190000 AS investimento_total_uh_entregue
,b.latitude
,b.longitude
,'CONCLUIDO' as status
FROM `xertica-gen-ai-br.xertica_cdhu_refined.vw_CDHU_Casa_Paulista_Concluido` a
LEFT JOIN `xertica-gen-ai-br.xertica_cdhu_trusted.ibge_municipio_centroide_sp` b
ON a.Cod_Munic = b.id_municipio;;
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
