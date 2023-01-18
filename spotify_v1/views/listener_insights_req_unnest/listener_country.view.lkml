view: listener_country {

    label: "Request Filters"

    dimension: listener_country {
      label: "Country"
      type: string
      sql: ${TABLE} ;;
      suggestions: ["AU", "CA", "DE", "ES", "GB", "IN", "IT", "JP", "MX", "US"]
      }
  }
