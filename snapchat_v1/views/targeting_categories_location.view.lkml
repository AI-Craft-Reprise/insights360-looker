view: targeting_categories_location {
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".targeting_categories_location
    ;;

 dimension: _airbyte_ab_id {
  hidden: yes
  type: string
  sql: ${TABLE}._airbyte_ab_id ;;
}

dimension: _airbyte_data {
  hidden: yes
  type: string
  sql: ${TABLE}._airbyte_data ;;
}

dimension: _airbyte_emitted_at {
  hidden: yes
  type: number
  sql: ${TABLE}._airbyte_emitted_at ;;
}

dimension: response {
  hidden: yes
  type: string
  sql: ${_airbyte_data}.response ;;
}

dimension: categories_loi {
  hidden: yes
  type: string
  sql: ${response}.categories_loi ;;
}

dimension: id {
  type: string
  sql: ${categories_loi}.id ;;
}

dimension: name {
  type: string
  sql: ${categories_loi}.name ;;
}

dimension: path {
  type: string
  sql: ${categories_loi}.path ;;
}

dimension: parent_id {
  type: string
  sql: ${categories_loi}.parent_id ;;
}

dimension: source {
  type: string
  sql: ${categories_loi}.source ;;
}




measure: count {
  type: count
  drill_fields: []
}
}
