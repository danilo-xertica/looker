view: gov_base_amostra_familia {
  sql_table_name: `xertica-gen-ai-br.xertica_cdhu_raw.gov_base_amostra_familia` ;;

  dimension: cd_ibge {
    type: string
    sql: ${TABLE}.cd_ibge ;;
  }
  dimension: classf {
    type: string
    sql: ${TABLE}.classf ;;
  }
  dimension: cod_abaste_agua_domic_fam {
    type: string
    sql: ${TABLE}.cod_abaste_agua_domic_fam ;;
  }
  dimension: cod_agua_canalizada_fam {
    type: string
    sql: ${TABLE}.cod_agua_canalizada_fam ;;
  }
  dimension: cod_banheiro_domic_fam {
    type: string
    sql: ${TABLE}.cod_banheiro_domic_fam ;;
  }
  dimension: cod_calcamento_domic_fam {
    type: string
    sql: ${TABLE}.cod_calcamento_domic_fam ;;
  }
  dimension: cod_centro_assist_fam {
    type: string
    sql: ${TABLE}.cod_centro_assist_fam ;;
  }
  dimension: cod_destino_lixo_domic_fam {
    type: string
    sql: ${TABLE}.cod_destino_lixo_domic_fam ;;
  }
  dimension: cod_eas_fam {
    type: string
    sql: ${TABLE}.cod_eas_fam ;;
  }
  dimension: cod_escoa_sanitario_domic_fam {
    type: string
    sql: ${TABLE}.cod_escoa_sanitario_domic_fam ;;
  }
  dimension: cod_especie_domic_fam {
    type: string
    sql: ${TABLE}.cod_especie_domic_fam ;;
  }
  dimension: cod_familia_indigena_fam {
    type: string
    sql: ${TABLE}.cod_familia_indigena_fam ;;
  }
  dimension: cod_iluminacao_domic_fam {
    type: string
    sql: ${TABLE}.cod_iluminacao_domic_fam ;;
  }
  dimension: cod_local_domic_fam {
    type: string
    sql: ${TABLE}.cod_local_domic_fam ;;
  }
  dimension: cod_material_domic_fam {
    type: string
    sql: ${TABLE}.cod_material_domic_fam ;;
  }
  dimension: cod_material_piso_fam {
    type: string
    sql: ${TABLE}.cod_material_piso_fam ;;
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
  dimension: estrato {
    type: string
    sql: ${TABLE}.estrato ;;
  }
  dimension: id_familia {
    type: string
    sql: ${TABLE}.id_familia ;;
  }
  dimension: ind_familia_quilombola_fam {
    type: string
    sql: ${TABLE}.ind_familia_quilombola_fam ;;
  }
  dimension: ind_parc_mds_fam {
    type: string
    sql: ${TABLE}.ind_parc_mds_fam ;;
  }
  dimension: marc_pbf {
    type: string
    sql: ${TABLE}.marc_pbf ;;
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
  measure: count {
    type: count
  }
}
