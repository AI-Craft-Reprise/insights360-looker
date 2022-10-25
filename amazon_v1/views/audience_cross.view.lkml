# If necessary, uncomment the line below to include explore_source.
# include: "amazon_v1.model.lkml"

view: audience_cross {
  derived_table: {
    explore_source: audience_gender {
      column: gender {}
      column: age_group { field: audience_age_group.age_group }
      column: audienceid { field: audiences.audienceid }
      column: advertiserid { field: audiences_with_advertisers.advertiserid }
    }
  }

  dimension: gender {
  }
  dimension: age_group {
  }
  dimension: audienceid {
  }
  dimension: advertiserid {
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
  measure: advertiserid_array {
    sql: array_agg(distinct ${advertiserid}) ;;
  }
}
