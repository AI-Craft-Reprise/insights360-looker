view: interests {

  view_label: "Targeting Audience Filters"

  dimension: interest{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

  dimension: category_id{
    type: string
    sql: ${interest}.category_id ;;
    # suggestions: ["ca", "gb", "us"]
  }

}
