view: facets_urns_and_names {
  derived_table: {
    sql: SELECT 'urn:li:adTargetingFacet:jobFunctions' as facet_urn_key, 'Job Functions' as facet_name_key
      UNION SELECT 'urn:li:adTargetingFacet:titles', 'Job Titles'
      UNION SELECT 'urn:li:adTargetingFacet:seniorities', 'Job Seniorities'
      UNION SELECT 'urn:li:adTargetingFacet:yearsOfExperienceRanges', 'Years Of Experience'
      UNION SELECT 'urn:li:adTargetingFacet:interests', 'Member Interests'
      UNION SELECT 'urn:li:adTargetingFacet:skills', 'Member Skills'
      UNION SELECT 'urn:li:adTargetingFacet:industries', 'Company Industries'
      UNION SELECT 'urn:li:adTargetingFacet:staffCountRanges', 'Company Size'
      UNION SELECT 'urn:li:adTargetingFacet:growthRate', 'Company Growth Rate'
      UNION SELECT 'urn:li:adTargetingFacet:employers', 'Company Names'
      UNION SELECT 'urn:li:adTargetingFacet:bingContinent', 'Members continent level locations'
      UNION SELECT 'urn:li:adTargetingFacet:bingCity', 'Members city level locations'
      UNION SELECT 'urn:li:adTargetingFacet:bingState', 'Members state level locations'
      UNION SELECT 'urn:li:adTargetingFacet:bingCountry', 'Members country level locations'
       ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: facet_urn_key {
    type: string
    sql: ${TABLE}.facet_urn_key ;;
    primary_key: yes
  }

  dimension: facet_name_key {
    type: string
    sql: ${TABLE}.facet_name_key ;;
  }

  set: detail {
    fields: [facet_urn_key, facet_name_key]
  }
}
