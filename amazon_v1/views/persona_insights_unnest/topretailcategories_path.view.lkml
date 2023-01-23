view: topretailcategories_path {

     # This view is part of persona_insights table, since the data is nested,
  # we had to create a new view which is unnested in the explore

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
 }
