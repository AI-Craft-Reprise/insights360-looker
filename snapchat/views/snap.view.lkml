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
    sql:  ${response}.targeting_insights.target_audience.audience_size_minimum ;;
    type: string
  }

  dimension: target_audience_size_maximum {
    sql:  ${response}.targeting_insights.target_audience.audience_size_maximum ;;
    type: string
  }

  dimension: reference_audience_size_minimum {
    sql:  ${response}.targeting_insights.reference_audience.audience_size_minimum ;;
    type: string
  }

  dimension: reference_audience_size_maximum {
    sql: ${response}.targeting_insights.reference_audience.audience_size_maximum ;;
    type: string
  }

  dimension: target_audience_size_maximum_n {
    type: number
    sql: CAST(${target_audience_size_maximum} as INTEGER);;
  }

  dimension: target_audience_size_minimum_n {
    type: number
    sql: CAST(${target_audience_size_minimum} as INTEGER);;
  }

  measure: target_audience_size_max {
    type: sum
    sql: ${target_audience_size_maximum_n} ;;
  }

  measure: target_audience_size_min {
    type: sum
    sql: ${target_audience_size_minimum_n} ;;
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
