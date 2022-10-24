view: segmentations {

  dimension: entitycount {
    label: "Entity Count"
    type: number
    sql: ${TABLE}.entitycount ;;
  }

  dimension: entitypercentage {
    label: "Entity Percentage"
    type: number
    sql: ${TABLE}.entitypercentage ;;
  }

  dimension: value {
    primary_key: yes
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: key {
    type: string
    sql: substring (${value}, 1, 10) ;;
  }

  dimension: entity_name_value {
    hidden: yes
    type: string
    sql: substring (${value}, 8) ;;
  }

  dimension: entity_value {
    type: string
    sql: substring(${entity_name_value},strpos(${entity_name_value},':')+1);;
  }

  dimension: entity_name {
    type: string
    sql: substring(${entity_name_value},1,strpos(${entity_name_value},':')-1);;
  }

  measure: Count {
    type: sum
    sql: ${entitycount} ;;
  }

  measure: Percentage {
    type: sum
    sql: ${entitypercentage} ;;
  }

  }
