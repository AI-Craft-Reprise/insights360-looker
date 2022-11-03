view: segment {
  sql_table_name: spotify.segment ;;
  suggestions: no

  dimension: playlist_insights {
    type: string
    sql: ${TABLE}."playlist insights" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
