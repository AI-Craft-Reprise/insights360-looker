view: gender {
  label: "Request Filters"

  dimension: gender {
    type: string
    sql: ${TABLE} ;;
    suggestions: ["Male", "Female", "Unknown"]
  }
  }
