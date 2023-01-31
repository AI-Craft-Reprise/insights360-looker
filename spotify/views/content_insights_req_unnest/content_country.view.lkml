view: content_country {
  label: "Request Filters"

  dimension: content_country {
    label: "Country"
    type: string
    sql: ${TABLE} ;;
    suggestions: ["AU", "CA", "DE", "ES", "GB", "IN", "IT", "JP", "MX", "US"]
  }
  }
