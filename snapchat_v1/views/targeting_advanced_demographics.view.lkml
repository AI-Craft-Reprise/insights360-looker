view: targeting_advanced_demographics {
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".targeting_advanced_demographics
    ;;
  suggestions: no

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

  dimension: advanced_demographics {
    type: string
    sql: ${response}.advanced_demographics;;
  }

  dimension: id {
    type: string
    sql: ${advanced_demographics}.id;;
  }

  dimension: name {
    type: string
    sql: ${advanced_demographics}.name;;
  }

  dimension: path {
    type: string
    sql: ${advanced_demographics}.path;;
  }

  dimension: source {
    type: string
    sql: ${advanced_demographics}.source;;
  }

  dimension: type {
    type: string
    sql: ${advanced_demographics}.type;;
  }

  dimension: parentid {
    type: string
    sql: ${advanced_demographics}.parentid;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
