view: gov_base_amostra_familia {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_refined.gov_base_amostra_familia` ;;

  dimension: abaste_agua_domic_fam {
    type: string
    sql: ${TABLE}.abaste_agua_domic_fam ;;
  }
  dimension: agua_canalizada_fam {
    type: string
    sql: ${TABLE}.agua_canalizada_fam ;;
  }
  dimension: banheiro_domic_fam {
    type: string
    sql: ${TABLE}.banheiro_domic_fam ;;
  }
  dimension: calcamento_domic_fam {
    type: string
    sql: ${TABLE}.calcamento_domic_fam ;;
  }
  dimension: cd_ibge {
    type: string
    sql: ${TABLE}.cd_ibge ;;
  }
  dimension: centroide {
    type: string
    sql: ${TABLE}.centroide ;;
  }
  dimension: classf {
    type: string
    sql: ${TABLE}.classf ;;
  }
  dimension: classificacao {
    type: string
    sql: ${TABLE}.classificacao ;;
  }
  dimension: cod_centro_assist_fam {
    type: string
    sql: ${TABLE}.cod_centro_assist_fam ;;
  }
  dimension: cod_eas_fam {
    type: string
    sql: ${TABLE}.cod_eas_fam ;;
  }
  dimension: dat_alteracao_fam {
    type: string
    sql: ${TABLE}.dat_alteracao_fam ;;
  }
  dimension: dat_atualizacao_familia {
    type: string
    sql: ${TABLE}.dat_atualizacao_familia ;;
  }
  dimension: dat_cadastramento_fam {
    type: string
    sql: ${TABLE}.dat_cadastramento_fam ;;
  }
  dimension: destino_lixo_domic_fam {
    type: string
    sql: ${TABLE}.destino_lixo_domic_fam ;;
  }
  dimension: escoa_sanitario_domic_fam {
    type: string
    sql: ${TABLE}.escoa_sanitario_domic_fam ;;
  }
  dimension: especie_domic_fam {
    type: string
    sql: ${TABLE}.especie_domic_fam ;;
  }
  dimension: familia_indigena_fam {
    type: string
    sql: ${TABLE}.familia_indigena_fam ;;
  }
  dimension: id_familia {
    type: string
    sql: ${TABLE}.id_familia ;;
  }
  dimension: iluminacao_domic_fam {
    type: string
    sql: ${TABLE}.iluminacao_domic_fam ;;
  }
  dimension: ind_familia_quilombola_fam {
    type: string
    sql: ${TABLE}.ind_familia_quilombola_fam ;;
  }
  dimension: ind_parc_mds_fam {
    type: string
    sql: ${TABLE}.ind_parc_mds_fam ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: local_domic_fam {
    type: string
    sql: ${TABLE}.local_domic_fam ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: marc_pbf {
    type: string
    sql: ${TABLE}.marc_pbf ;;
  }
  dimension: material_domic_fam {
    type: string
    sql: ${TABLE}.material_domic_fam ;;
  }
  dimension: material_piso_fam {
    type: string
    sql: ${TABLE}.material_piso_fam ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: nom_centro_assist_fam {
    type: string
    sql: ${TABLE}.nom_centro_assist_fam ;;
  }
  dimension: nom_estab_assist_saude_fam {
    type: string
    sql: ${TABLE}.nom_estab_assist_saude_fam ;;
  }
  dimension: peso_fam {
    type: string
    sql: ${TABLE}.peso_fam ;;
  }
  dimension: qtd_comodos_domic_fam {
    type: string
    sql: ${TABLE}.qtd_comodos_domic_fam ;;
  }
  dimension: qtd_comodos_dormitorio_fam {
    type: string
    sql: ${TABLE}.qtd_comodos_dormitorio_fam ;;
  }
  dimension: qtde_pessoas {
    type: string
    sql: ${TABLE}.qtde_pessoas ;;
  }
  dimension: vlr_renda_media_fam {
    type: string
    sql: ${TABLE}.vlr_renda_media_fam ;;
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
