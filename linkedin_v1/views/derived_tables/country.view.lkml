view: country {
    derived_table: {
      explore_source: ad_targeting_entities {
        column: name {}
        column: urn {}
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
      description: ""
    }
  }
