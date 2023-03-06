view: audience_age_group {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT '18-24' as age_group UNION SELECT '25-34' as age_group UNION SELECT '35-44' as age_group UNION SELECT '45-54' as age_group UNION SELECT '55-64' as age_group;;
  }

  dimension: age_group {
    sql: ${TABLE}.age_group ;;
  }
}
