view: targeting_interests_vac {
  view_label: "Interests Mapping"
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".targeting_interests_vac
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
    sql: ${_airbyte_data}.response ;;
  }

  dimension: id {
    primary_key: yes
    sql: ${response}.id ;;
  }

  dimension: name {
    sql: ${response}.name ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
