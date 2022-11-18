view: persona_age {
  label: "Persona Age and Gender"

  dimension: age {
    type: string
    sql: ${TABLE} ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }

}
