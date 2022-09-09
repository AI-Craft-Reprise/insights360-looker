view: listener {
  sql_table_name: spotify.listener ;;
  suggestions: no

  dimension: dimensions {
    type: string
    sql: ${TABLE}.dimensions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
