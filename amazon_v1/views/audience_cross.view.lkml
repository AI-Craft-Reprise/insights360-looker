# If necessary, uncomment the line below to include explore_source.
# include: "amazon_v1.model.lkml"

view: audience_cross {
  derived_table: {
    explore_source: audience_gender {
      column: gender {}
      column: age_group { field: audience_age_group.age_group }
      column: audienceid { field: audiences.audienceid }
    }
  }

  dimension: gender {
  }
  dimension: age_group {
  }
  dimension: audienceid {
  }
  measure: gender_array {
    sql: array_agg(distinct ${gender}) ;;
  }
  measure: age_group_array {
    sql: array_agg(distinct ${age_group}) ;;
  }
  measure: audienceid_array {
    sql: array_agg(distinct ${audienceid}) ;;
  }
}
