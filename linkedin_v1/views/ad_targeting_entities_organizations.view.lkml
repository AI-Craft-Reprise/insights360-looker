view: ad_targeting_entities_organizations {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".ad_targeting_entities_organizations
    ;;


  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql:  ${_airbyte_data}.response ;;
  }

  dimension: name {
    type: string
    sql: ${response}.name ;;
  }

  dimension: urn {
    type: string
    sql: ${response}.urn ;;
    primary_key: yes
  }

  dimension: faceturn {
    type: string
    sql: ${response}.faceturn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
