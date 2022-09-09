view: content_insights {
  sql_table_name: spotify.content_insights ;;
  suggestions: no

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: content_info {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.content_info ;;
  }

  dimension: name {
    type: string
    sql: ${content_info}.name ;;
  }

  dimension: content_type {
    type: string
    sql: ${content_info}.content_type ;;
  }

  dimension: uri {
    type: string
    sql: ${content_info}.uri ;;
  }

  dimension: field {
    type: string
    sql: ${_airbyte_data}.field ;;
  }

  dimension: aggregation {
    type: string
    sql: ${_airbyte_data}.aggregation ;;
  }

  dimension: dimension {
    type: string
    sql: ${_airbyte_data}.dimension ;;
  }

  dimension: insight_key {
    type: string
    sql: ${_airbyte_data}.insight_key ;;
  }

  dimension: insight_value {
    type: number
    sql: ${_airbyte_data}.insight_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: value {
    type: sum
    sql: ${insight_value} ;;
  }
}
