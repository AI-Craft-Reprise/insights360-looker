view: company {

    derived_table: {
      explore_source: ad_targeting_entities {
        column: name { field: ad_targeting_entities_organizations.name }
        column: urn { field: ad_targeting_entities_organizations.urn }
      }
    }
    dimension: company{
      sql: ${TABLE}.name ;;
      description: ""
    }
    dimension: urn {
      description: ""
    }
  }
