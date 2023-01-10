view: interests {

  view_label: "Targeting Audience Filters"

  dimension: interest{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

}

view: interest_category {
  dimension: category_id{
    type: string
    sql: ${TABLE} ;;
  }
}
