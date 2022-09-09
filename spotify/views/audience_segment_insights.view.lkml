view: audience_segment_insights {
  sql_table_name: spotify.audience_segment_insights ;;
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

  dimension: segment_info {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.segment_info ;;
  }

  dimension: name {
    type: string
    sql: ${segment_info}.name ;;
  }

  dimension: id {
    type: string
    sql: ${segment_info}.id ;;
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
