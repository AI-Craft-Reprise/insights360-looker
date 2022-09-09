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

  dimension: age_groups{
    type: string
    sql: CASE WHEN ${dimension} = 'age_group' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["18-24", "25-34", "35-44", "45-54", "55-64", "65+"]
  }

  dimension: gender{
    type: string
    sql: CASE WHEN ${dimension} = 'gender' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["UNKNOWN", "MALE", "FEMALE"]
  }

  dimension: time_of_day{
    type: string
    sql: CASE WHEN ${dimension} = 'time_of_day' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["afternoon", "morning", "night"]
  }

  dimension: device{
    type: string
    sql: CASE WHEN ${dimension} = 'device' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["desktop  device", "mobile  device", "tablet"]
  }

  dimension: days_of_week{
    type: string
    sql: CASE WHEN ${dimension} = 'days_of_week' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
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
