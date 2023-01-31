view: lifestyle {

   # This view is part of persona_insights table, values for each category are nested,
  # we had to create separate view for each of them and then unnest it in the explore

  label: "Life Style"


  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

   dimension: name_full {
    hidden: yes
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name {
    type: string
    sql: substring (${name_full}, 6) ;;
    # 6 characters (including spaces) removed from the original Name
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
    sql: ${percent} /100;;
  }

  measure: total_affinity {
    type: sum
    sql: ${affinity} ;;
    value_format: "0.0"
  }

 }
