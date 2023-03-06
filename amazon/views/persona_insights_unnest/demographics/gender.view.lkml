view: gender {

  # This view is part of persona_insights table, since demographics data is nested,
  # we had to create separate view for each element and then unnest it in the explore

  view_label: "Persona Insights Demographics"

  dimension: gender_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
  }

  dimension: gender_percent {
    hidden: yes
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: gender_affinity {
    hidden: yes
    type: number
    sql: ${TABLE}.affinity ;;
  }

  measure: total_gender_percentage {
    type: sum
    sql: ${gender_percent}/100 ;;
    value_format: "0%"
  }

  measure: total_gender_affinity {
    type: sum
    sql: ${gender_affinity} ;;
    value_format: "0.0"
  }
 }
