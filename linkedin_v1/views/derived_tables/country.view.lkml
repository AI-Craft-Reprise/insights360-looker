view: country {
    derived_table: {
      explore_source: ad_targeting_entities {
        column: name {}
        column: facets {}
        filters: {
          field: ad_targeting_entities.facet
          value: "urn:li:adTargetingFacet:locations"
        }
        filters: {
          field: ad_targeting_entities.urn
          value: "-%state%,-%region%,-%Group%"
        }
      }
    }
    dimension: name {
      description: ""
    }
    dimension: facets {
      description: ""
    }
  }
