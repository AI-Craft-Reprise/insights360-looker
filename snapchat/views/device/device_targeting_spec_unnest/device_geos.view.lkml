view: device_geos {
  view_label: "Targeting Audience Filters"

  dimension: country{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

  dimension: country_code{
    label: "Target Country"
    type: string
    sql: ${country}.country_code ;;
    suggestions: ["au", "ca", "de", "es", "gb", "in", "it", "jp", "mx", "us"]
  }


}
