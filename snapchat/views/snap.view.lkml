view: snap {
  sql_table_name: raw_snap_extractions.snap ;;
  suggestions: no

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: request_status {
    type: string
    sql: ${response}.request_status ;;
  }

  dimension: request_id {
    type: string
    primary_key: yes
    sql: ${response}.request_id ;;
  }

  dimension: target_audience_size_minimum {
    sql:  CAST(${response}.targeting_insights.target_audience.audience_size_minimum as INTEGER) ;;
    type: number
  }

  dimension: target_audience_size_maximum {
    sql:  CAST(${response}.targeting_insights.target_audience.audience_size_maximum as INTEGER) ;;
    type: number
  }

  dimension: reference_audience_size_minimum {
    sql:  CAST(${response}.targeting_insights.reference_audience.audience_size_minimum as INTEGER) ;;
    type: number
  }

  dimension: reference_audience_size_maximum {
    sql: CAST(${response}.targeting_insights.reference_audience.audience_size_maximum as INTEGER) ;;
    type: number
  }

  measure: target_audience_size_max {
    type: sum
    sql: ${target_audience_size_maximum} ;;
  }

  measure: target_audience_size_min {
    type: sum
    sql: ${target_audience_size_minimum} ;;
  }

  measure: reference_audience_size_max {
    type: max
    sql: ${reference_audience_size_maximum} ;;
  }

  measure: reference_audience_size_min {
    type: min
    sql: ${reference_audience_size_minimum} ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
