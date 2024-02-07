view: vw_empreendimentos_lat_long {
  sql_table_name: `xertica-gen-ai-br.TRUSTED_CDHU.tbEmpreendimentosComercializados` ;;

  dimension: bairro {
    type: string
    sql: ${TABLE}.Bairro ;;
  }
  dimension: cep {
    type: number
    sql: ${TABLE}.CEP ;;
  }
  dimension: cidade {
    type: string
    sql: ${TABLE}.Cidade ;;
  }
  dimension: classe {
    type: string
    sql: ${TABLE}.classe ;;
  }
  dimension: cod_munici {
    type: number
    sql: ${TABLE}.Cod_Munici ;;
  }
  dimension: cod_regiao {
    type: string
    sql: ${TABLE}.Cod_Regiao ;;
  }
  dimension: cod_uh {
    type: number
    sql: ${TABLE}.Cod_UH ;;
  }
  dimension: codigo_emp {
    type: number
    sql: ${TABLE}.Codigo_Emp ;;
  }
  dimension: em_risco {
    type: string
    sql: ${TABLE}.Em_Risco ;;
  }
  dimension: endereco_c {
    type: string
    sql: ${TABLE}.Endereco_C ;;
  }
  dimension: geocoded {
    type: string
    sql: ${TABLE}.geocoded ;;
  }
  dimension: gridcode {
    type: number
    sql: ${TABLE}.gridcode ;;
  }
  dimension: join_count {
    type: number
    sql: ${TABLE}.Join_Count ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: logradouro {
    type: string
    sql: ${TABLE}.Logradouro ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: nome_empre {
    type: string
    sql: ${TABLE}.Nome_Empre ;;
  }
  dimension: nome_munic {
    type: string
    sql: ${TABLE}.Nome_Munic ;;
  }
  dimension: nome_regia {
    type: string
    sql: ${TABLE}.Nome_Regia ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.Numero ;;
  }
  dimension: qtde_uhs_n {
    type: number
    sql: ${TABLE}.Qtde_UHs_n ;;
  }
  dimension: target_fid {
    type: number
    value_format_name: id
    sql: ${TABLE}.TARGET_FID ;;
  }
  dimension: tipo_ender {
    type: string
    sql: ${TABLE}.Tipo_Ender ;;
  }
  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: latLong{
    type: location
    sql_latitude: ${latitude};;
    sql_longitude: ${longitude};;
  }

  measure: count {
    type: count
  }
}
