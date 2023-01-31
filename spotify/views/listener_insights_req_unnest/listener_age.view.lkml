view: listener_age {

  label: "Request Filters"

  dimension: age {
    sql: ${TABLE} ;;
    suggestions: ["18-24", "25-34", "35-44", "55-64"]
  }
  }
