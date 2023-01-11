view: country {

  view_label: "Base Audience Filter"

  dimension: country{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

  dimension: country_code{
    label: "Base Country Code"
    type: string
    sql: ${country}.country_code ;;
    suggestions: ["au", "ca", "de", "es", "gb", "in", "jp", "mx", "us"]
  }


  }
