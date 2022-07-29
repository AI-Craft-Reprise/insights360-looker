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

  measure: count {
    type: count
    drill_fields: []
  }
}
