view: content_insights {
  sql_table_name: "airbyte-dev-spotify-ads-glue-ctg-db".content_insights
    ;;
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

  dimension: request {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: body {
    hidden: yes
    type: string
    sql: ${request}.body ;;
  }

  dimension: filters {
    type: string
    sql: ${body}.filters ;;
  }

  dimension: age_group_req {
    type: string
    # hidden: yes
    sql: ${filters}.age_group ;;
  }

  dimension: gender_req {
    type: string
    # hidden: yes
    sql: ${filters}.gender ;;
  }

  dimension: country {
    type: string
    # hidden: yes
    sql: ${filters}.country ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: content_info {
    hidden: yes
    type: string
    sql: ${response}.content_info ;;
  }

  dimension: name {
    type: string
    sql: ${content_info}.name ;;
  }

  dimension: content_type {
    type: string
    sql: ${content_info}.content_type ;;
    suggestions: ["playlist", "podcast"]
  }

  dimension: uri {
    type: string
    sql: ${content_info}.uri ;;
  }

  dimension: field {
    type: string
    sql: ${response}.field ;;
  }

  dimension: aggregation {
    type: string
    sql: ${response}.aggregation ;;
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
    sql: ${response}.insight_value ;;
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
    suggestions: ["desktop", "mobile", "tablet"]
  }

  dimension: days_of_week{
    type: string
    sql: CASE WHEN ${dimension} = 'days_of_week' THEN ${insight_key}

                                ELSE NULL END ;;
    suggestions: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
  }

  measure: value {
    type: sum
    sql: ${insight_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
