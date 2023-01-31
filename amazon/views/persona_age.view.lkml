view: persona_age {
  label: "Persona Age and Gender"

  dimension: age {
    type: string
    sql: ${TABLE} ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }

  # dimension: all_age_groups {
  #   type: string
  #   sql: case when ${age} in ('18-24', '25-34', '35-44', '45-54', '55-64') then ${age}
  #       else 'all';;
  # }

}
