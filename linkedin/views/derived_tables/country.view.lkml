view: country {
    derived_table: {
      explore_source: ad_targeting_facets {
        column: name { field: ad_targeting_entities.name }
        column: urn { field: ad_targeting_entities.urn }
        filters: {
          field: ad_targeting_entities.urn
          value: "-%Group%,-%region%,-%state%"
        }
        filters: {
          field: ad_targeting_entities.facet
          value: "%location%"
        }
      }
    }
    dimension: country {
      sql: ${TABLE}.name ;;
      description: ""
    }
    dimension: country_urn {
      sql: ${TABLE}.urn  ;;
      description: ""
    }
  }
