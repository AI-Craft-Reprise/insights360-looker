view: audience_request {

  # dimension: location {
  #   type: string
  #   sql: ${TABLE}.urn:li:adTargetingFacet:locations ;;
  # }

  # dimension: gender {
  #   type: string
  #   sql: ${TABLE}.urn:li:adTargetingFacet:genders ;;
  # }

  # dimension: age {
  #   type: string
  #   sql: ${TABLE}.urn:li:adTargetingFacet:ageRanges ;;
  # }

  # dimension: skills {
  #   type: string
  #   sql: ${TABLE}.urn:li:adTargetingFacet:skills ;;
  # }

  dimension: include {
    type: string
    sql: ${TABLE}.include ;;
  }


  }
