view: topretailcategories {

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
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: affinity {
    type: number
    sql: ${TABLE}.affinity ;;
  }

  # there is also an array - Path that can be unnested if needed
  # (eg. path=[Books, Subjects, Health, Fitness & Dieting, Exercise & Fitness, Weight Training])

 }
