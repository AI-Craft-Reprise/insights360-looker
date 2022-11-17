view: targeting_categories {
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".targeting_categories
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

  dimension: scls {
    hidden: yes
    type: string
    sql: ${response}.scls ;;
  }

  dimension: id {
    type: string
    sql: ${scls}.id ;;
  }

  dimension: name {
    type: string
    sql: ${scls}.name ;;
  }

  dimension: path {
    type: string
    sql: ${scls}.path ;;
  }

  dimension: parent_id {
    type: string
    sql: ${scls}.parent_id ;;
  }

  dimension: source {
    type: string
    sql: ${scls}.source ;;
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
