view: lookalike {

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
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: affinity {
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
