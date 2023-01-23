view: income {

  # This view is part of persona_insights table, since demographics data is nested,
  # we had to create separate views for each element and then unnest it in the explore

  view_label: "Persona Insights Demographics"

  dimension: income_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
    order_by_field: subject_ordering
  }


dimension: subject_ordering {
  type: number
  sql:
      CASE
        WHEN ${income_attribute} = '$150,000 +' THEN 1
        WHEN ${income_attribute} = '$100,000 - $149,999' THEN 2
        WHEN ${income_attribute} = '$75,000 - $99,999' THEN 3
        WHEN ${income_attribute} = '$50,000 - $74,999'THEN 4
      END ;;
    hidden: yes
    description: "This dimension is used to force sort the attribute dimension."
  }

  dimension: income_percent {
    hidden: yes
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: income_affinity {
    hidden: yes
    type: number
    sql: ${TABLE}.affinity ;;
  }

  measure: total_income_percentage {
    type: sum
    sql: ${income_percent}/100 ;;
    value_format: "0%"
  }

  measure: total_income_affinity {
    type: sum
    sql: ${income_affinity} ;;
    value_format: "0.0"
  }
  }
