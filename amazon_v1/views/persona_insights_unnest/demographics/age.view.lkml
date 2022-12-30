view: age {

  view_label: "Persona Insights Demographics"

  dimension: age_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
  }

  dimension: age_percent {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: age_affinity {
    type: number
    sql: ${TABLE}.affinity ;;
  }

  measure: total_age_percentage {
    type: sum
    sql: ${age_percent}/100 ;;
    value_format: "0%"
  }

  measure: total_age_affinity {
    type: sum
    sql: ${age_affinity} ;;
    value_format: "0.0"
  }
 }
