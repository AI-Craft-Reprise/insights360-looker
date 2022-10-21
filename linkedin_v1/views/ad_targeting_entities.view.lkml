view: ad_targeting_entities {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".ad_targeting_entities
    ;;
  # suggestions: no

  dimension: _airbyte_ab_id {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    hidden: yes
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: request {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: name {
    type: string
    sql: ${response}.name ;;
  }

  dimension: urn {
    type: string
    sql: ${response}.urn ;;
  }

  dimension: urn_sub {
      hidden: yes
      type: string
      sql: substring (${urn}, 8) ;;
    }

  dimension: urn_key {
    type: string
    sql: substring(${urn_sub},strpos(${urn_sub},':')+1);;
  }

  dimension: value {
    type: string
    sql: ${response}.value ;;
  }

  dimension: faceturn {
    type: string
    sql: ${response}.faceturn ;;
  }

  dimension: params {
    hidden: yes
    type: string
    sql: ${request}.params ;;
  }

  dimension: facet {
    type: string
    sql: ${params}.facet ;;
  }

  dimension: facets {
    type: string
    sql: SUBSTRING (${facet}, 25) ;;
    suggestions: ["ageRanges", "companyCategory", "degrees", "fieldsOfStudy", "genders", "growthRate",
      "industries", "interfaceLocales", "jobFunctions", "locations", "memberBehaviors", "profileLocations",
      "revenue", "seniorities", "skills", "staffCountRanges", "titles", "titlesAll", "titlesPast", "yearsOfExperienceRanges"]
  }


  dimension: q {
    type: string
    sql: ${params}.q ;;
  }

  dimension: queryversion {
    type: string
    sql: ${params}.queryversion ;;
  }

  dimension: start {
    type: string
    sql: ${params}.start ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
