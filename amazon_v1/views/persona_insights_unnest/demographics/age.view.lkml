view: age {

# This view is part of persona_insights table, since demographics data is nested,
  # we had to create separate view for each element and then unnest it in the explore

  view_label: "Persona Insights Demographics"

  dimension: age_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
  }

  dimension: age_percent {
    hidden: yes
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: age_affinity {
    hidden: yes
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
