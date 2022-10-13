view: ad_targeting_facets {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".ad_targeting_facets
    ;;
  suggestions: no

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

  dimension: facetname {
    type: string
    sql: ${response}.facetname ;;
  }

  dimension: urn {
  type: string
  sql: ${response}.urn ;;
  }


      # {entitytypes=[COUNTRY_GROUP, COUNTRY, STATE, REGION],
      # availableentityfinders=[AD_TARGETING_FACET, TYPEAHEAD],

  measure: count {
    type: count
    drill_fields: []
  }
}
