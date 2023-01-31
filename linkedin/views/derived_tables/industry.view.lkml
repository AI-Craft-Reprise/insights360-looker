view: industry {
    derived_table: {
      explore_source: ad_targeting_facets {
        column: name { field: ad_targeting_entities.name }
        column: urn { field: ad_targeting_entities.urn }
        filters: {
          field: ad_targeting_facets.urn
          value: "urn:li:adTargetingFacet:industries"
        }
      }
    }
    dimension: industry {
      sql: ${TABLE}.name ;;
      description: ""
    }
    dimension: industry_urn {
      sql: ${TABLE}.urn ;;
      description: ""
    }
  }
