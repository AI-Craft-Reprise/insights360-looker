view: targeting_device_os_type {
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".targeting_device_os_type
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

dimension: os_type {
  hidden: yes
  type: string
  sql: ${response}.os_type ;;
}

dimension: id {
  type: string
  sql: ${os_type}.id ;;
}

dimension: name {
  type: string
  sql: ${os_type}.name ;;
}



measure: count {
  type: count
  drill_fields: []
}
}
