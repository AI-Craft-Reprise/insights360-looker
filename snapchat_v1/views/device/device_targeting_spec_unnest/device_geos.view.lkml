view: device_geos {
  view_label: "Targeting Audience Filters"

  dimension: country{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

  dimension: country_code{
    type: string
    sql: ${country}.country_code ;;
    suggestions: ["ca", "gb", "us"]
  }


}
