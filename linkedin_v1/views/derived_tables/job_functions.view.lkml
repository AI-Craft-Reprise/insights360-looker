view: job_functions {
  derived_table: {
    explore_source: ad_targeting_facets {
      column: name { field: ad_targeting_entities.name }
      column: urn { field: ad_targeting_entities.urn }
      filters: {
        field: ad_targeting_facets.urn
        value: "urn:li:adTargetingFacet:jobFunctions"
      }
    }
  }
  dimension: job_function {
    sql: ${TABLE}.name ;;
    description: ""
  }
  dimension: job_function_urn {
    sql: ${TABLE}.urn ;;
    description: ""
  }
}
