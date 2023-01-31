view: age {
  label: "Request Filters"

  dimension: age {
    type: string
    sql: ${TABLE} ;;
    suggestions: ["18-24", "25-34", "35-44", "45-54", "55-64"]
  }
  }
