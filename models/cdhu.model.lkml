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
explore: vw_looker_acompanhamento_de_acoes {}
