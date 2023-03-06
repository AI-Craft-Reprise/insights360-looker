view: persona_gender {
  label: "Persona Age and Gender"

  dimension: gender {
    type: string
    sql: ${TABLE} ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }
  }
