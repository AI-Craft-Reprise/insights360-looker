view: audience_segment_insights {
  sql_table_name: spotify.audience_segment_insights ;;
  suggestions: no

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    primary_key: yes
    hidden:  yes
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: request {
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: body {
    type: string
    hidden: yes
    sql: ${request}.body ;;
  }

  dimension: filters {
    type: string
    hidden: yes
    sql: ${body}.filters ;;
  }

  dimension: request_key {
    type:  string
    sql:  ${country} ;;
  }

  dimension: country {
    type: string
    sql: ${filters}.country ;;
    suggestions: ["CA", "GB", "US"]
  }

  dimension: response {
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: segment_info {
    hidden: yes
    type: string
    sql: ${response}.segment_info ;;
  }

  dimension: segment_name {
    type: string
    sql: ${segment_info}.name ;;
    suggestions: ["Automotive Users", "Enhanced_Cooking Enthusiasts", "Enhanced_Dads", "Enhanced_Fitness Enthusiasts",
                  "Enhanced_Gamers", "Enhanced_Gen Z", "Enhanced_Live Entertainment / Concert Goers", "Enhanced_Millennials",
                  "Enhanced_Moms", "Enhanced_Parents", "Enhanced_Socialites/Partiers", "Enhanced_Tech Early Adopters",
                  "Enhanced_Teens", "Enhanced_Travelers", "Test: Podcast Listeners"]
  }

  dimension: segment_id {
    type: string
    hidden: yes
    sql: ${segment_info}.id ;;
  }

  dimension: field {
    type: string
    sql: ${response}.field ;;
  }

  dimension: aggregation {
    type: string
    sql: ${response}.aggregation ;;
    suggestions: ["day", "hour", "month", "week"]
  }

  dimension: dimension {
    type: string
    sql: ${response}.dimension ;;
  }

  dimension: insight_key {
    type: string
    sql: ${response}.insight_key ;;
  }

  dimension: insight_value {
    type: number
    sql: cast(${response}.insight_value as double)  ;;
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
