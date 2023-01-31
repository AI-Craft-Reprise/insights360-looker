view: lookalike {

   # This view is part of persona_insights table, since the data is nested,
  # we had to create a new view which is unnested in the explore

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: name {
    label: "Top Audience Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: percent {
    hidden: yes
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: affinity {
    hidden: yes
  type: number
  sql: ${TABLE}.affinity ;;
  }

  measure: total_percentage {
    type: sum
    sql: ${percent} ;;
  }

  measure: total_affinity {
    type: sum
    sql: ${affinity} ;;
    value_format: "0.0"
  }

}
