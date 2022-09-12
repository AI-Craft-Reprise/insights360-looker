view: listener_insights {
  sql_table_name: spotify.listener_insights ;;
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

  dimension: field {
    type: string
    sql: ${_airbyte_data}.field ;;
    suggestions: ["minutes", "streams", "minutes_percent", "streams_percent"]
  }

  dimension: aggregation {
    type: string
    sql: ${_airbyte_data}.aggregation ;;
    suggestions: ["day", "hour", "month", "week"]
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

  dimension: time_of_day{
    type: string
    sql: CASE WHEN ${dimension} = 'time_of_day' THEN ${insight_key}

                                ELSE NULL END ;;
    suggestions: ["afternoon", "morning", "night"]
  }

  dimension: days_of_week{
    type: string
    sql: CASE WHEN ${dimension} = 'days_of_week' THEN ${insight_key}

                          ELSE NULL END ;;
    suggestions: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
  }

  dimension: city{
    type: string
    sql: CASE WHEN ${dimension} = 'city' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
  }

  dimension: genre{
    type: string
    sql: CASE WHEN ${dimension} = 'genre' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
  }

  dimension: platform{
    type: string
    sql: CASE WHEN ${dimension} = 'platform' THEN ${insight_key}

                                ELSE NULL END ;;
    suggestions: ["Car", "Desktop", "Game Console", "Mobile", "Speaker", "Tablet",  "TV", "Wearable", "Web", "Other"]
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
