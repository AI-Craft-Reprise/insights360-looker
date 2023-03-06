view: company_size  {
    derived_table: {
      explore_source: ad_targeting_facets {
        column: name { field: ad_targeting_entities.name }
        column: urn { field: ad_targeting_entities.urn }
        filters: {
          field: ad_targeting_facets.urn
          value: "urn:li:adTargetingFacet:staffCountRanges"
        }
      }
    }
    dimension: company_size {
      sql: ${TABLE}.name ;;
      description: ""
    }
    dimension: company_size_urn {
      sql: ${TABLE}.urn ;;
      description: ""
    }
  }
