view: relationship {

  # This view is part of persona_insights table, since demographics data is nested,
  # we had to create separate view for each element and then unnest it in the explore

  view_label: "Persona Insights Demographics"

  dimension: relationship_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
  }

  dimension: relationship_percent {
    hidden: yes
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: relationship_affinity {
    hidden: yes
    type: number
    sql: ${TABLE}.affinity ;;
  }

  measure: total_relationship_percentage {
    type: sum
    sql: ${relationship_percent}/100 ;;
    value_format: "0%"
  }

  measure: total_relationship_affinity {
    type: sum
    sql: ${relationship_affinity} ;;
    value_format: "0.0"
  }
  }
