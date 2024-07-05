connection: "cdhu"

# include all the views
include: "/views/**/*.view"

datagroup: cdhu_default_datagroup {
  #sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cdhu_default_datagroup

map_layer: escoinund {
  file: "/Maps/UBC_v2.json"
  property_key: "NOME_UNID"
}

map_layer: t_inund_layer {
  file: "/Maps/T_INUND.geojson"
  property_key: "P_INU_CLAS"
}

explore: area_risco_teste5 {}
explore: ubs_est_sp {}
explore: t_inund {}
explore: vw_empreendimentos_lat_long {}
explore: vw_acompanhamento_de_acoes {}
explore: cdhu_credito_imobiliario_shs {
  join: cdhu_novas_ppps {
    type: left_outer
    relationship: many_to_one
    sql_on: ${cdhu_credito_imobiliario_shs.cod_ibge_texto} = ${cdhu_novas_ppps.cod_ibge_texto} ;;
  }
}
explore: atendimento_habitacional_detalhado{}
explore: gov_base_amostra_familia {}
explore: gov_base_amostra_pessoa {}
explore: gov_base_amostra_familia_count {}
# explore: gov_base_amostra_familia_join {
#   join: gov_base_amostra_pessoa_join {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${gov_base_amostra_pessoa_join.id_familia} = ${gov_base_amostra_familia_join.id_familia} ;;
#   }
explore: gov_base_amostra_familia_join {
  join: gov_base_amostra_pessoa_join {
    type: left_outer
    relationship: many_to_one
    sql_on: ${gov_base_amostra_pessoa_join.id_familia} = ${gov_base_amostra_familia_join.id_familia} ;;
  }

  join: programa_classe {
    type: left_outer
    relationship: many_to_one
    sql_on: ${gov_base_amostra_familia_join.cd_ibge} = ${programa_classe.cod_ibge_texto} ;;
  }

}
