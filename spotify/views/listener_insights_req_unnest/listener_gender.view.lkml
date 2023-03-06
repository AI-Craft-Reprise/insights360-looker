view: listener_gender {

    label: "Request Filters"

    dimension: gender {
      sql: ${TABLE} ;;
      suggestions: ["FEMALE", "MALE"]
    }
  }
