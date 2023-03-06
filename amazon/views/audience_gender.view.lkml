
view: audience_gender {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT 'Female' as gender UNION SELECT 'Male' as gender
      ;;
  }

  dimension: gender {
    sql: ${TABLE}.gender ;;
  }
}
