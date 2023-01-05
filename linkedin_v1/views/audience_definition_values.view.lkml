view: audience_definition_values {
  view_label: "Targeting Audience Definition"

dimension: urn {
  sql: ${TABLE}.urn;;
}

  dimension: value {
    sql: ${TABLE}.value;;
  }
}
