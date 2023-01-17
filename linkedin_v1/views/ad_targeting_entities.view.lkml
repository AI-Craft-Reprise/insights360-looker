view: ad_targeting_entities{
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".ad_targeting_entities
    ;;

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
    label: "Entity Name"
    type: string
    sql: ${response}.name ;;
  }

  dimension: urn {
    label: "Entity URN"
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
    hidden: yes
    type: string
    sql: SUBSTRING (${facet}, 25) ;;
    suggestions: ["ageRanges", "companyCategory", "degrees", "fieldsOfStudy", "genders", "growthRate",
      "industries", "interfaceLocales", "jobFunctions", "locations", "memberBehaviors", "profileLocations",
      "revenue", "seniorities", "skills", "staffCountRanges", "titles", "titlesAll", "titlesPast", "yearsOfExperienceRanges"]
  }

  dimension: facet_name {
    type: string
    sql: CASE WHEN ${facets}='ageRanges' THEN 'Age Range'
              WHEN ${facets}='companyCategory' THEN 'Company Category'
              WHEN ${facets}='degrees' THEN 'Degree'
              WHEN ${facets}='fieldsOfStudy' THEN 'Field Of Study'
              WHEN ${facets}='genders' THEN 'Gender'
              WHEN ${facets}='growthRate' THEN 'Growth Rate'
              WHEN ${facets}='industries' THEN 'Industry'
              WHEN ${facets}='interfaceLocales' THEN 'Interface Locales'
              WHEN ${facets}='jobFunctions' THEN 'Job Function'
              WHEN ${facets}='locations' THEN 'Location'
              WHEN ${facets}='memberBehaviors' THEN 'Member Behavior'
              WHEN ${facets}='profileLocations' THEN 'Profile Location'
              WHEN ${facets}='revenue' THEN 'Revenue'
              WHEN ${facets}='seniorities' THEN 'Seniority'
              WHEN ${facets}='skills' THEN 'Skill'
              WHEN ${facets}='staffCountRanges' THEN 'Staff Count Range'
              WHEN ${facets}='titles' THEN 'Title'
              WHEN ${facets}='titlesAll' THEN 'Titles All'
              WHEN ${facets}='titlesPast' THEN 'Titles Past'
              WHEN ${facets}='yearsOfExperienceRanges' THEN 'Years of Experience'
              ELSE NULL END;;
  }

  dimension: q {
    hidden: yes
    type: string
    sql: ${params}.q ;;
  }

  dimension: queryversion {
    hidden: yes
    type: string
    sql: ${params}.queryversion ;;
  }

  dimension: start {
    hidden: yes
    type: string
    sql: ${params}.start ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
