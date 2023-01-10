view: demo {

  view_label: "Targeting Audience Filters"


  dimension: demographics{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

  dimension: gender{
    type: string
    sql: ${demographics}.gender ;;
    suggestions: ["MALE", "FEMALE"]
  }

}

view: age_group {
  dimension: age_groups{
    type: string
    sql: ${TABLE} ;;
    suggestions: ["13-17", "18-20", "21-24", "25-34", "35+"]
  }

}
