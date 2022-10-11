view: audience_age_group {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT '18' as age_group UNION SELECT '20' as age_group
      ;;
  }

  dimension: age_group {
    sql: ${TABLE}.age_group ;;
  }
}
