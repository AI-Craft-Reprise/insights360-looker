view: topretailcategories {

     # This view is part of persona_insights table, since the data is nested,
  # we had to create a new view which is unnested in the explore

  label: "Top Retail Categories"

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: name {
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

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  measure: total_percentage {
    type: sum
    sql: ${percent}/100 ;;
  }

  measure: total_affinity {
    type: sum
    sql: ${affinity} ;;
    value_format: "0.0"
  }

 }
