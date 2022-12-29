view: audience_insights_entities {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".audience_insights_entities
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
    sql: ${_airbyte_data}.response ;;
  }

  dimension: entity_name {
    sql: ${response}.name ;;
  }

  dimension: urn {
    sql: ${response}.urn ;;
  }

  dimension: facet_urn {
    sql: ${response}.faceturn;;
  }

  dimension: entity_urn {
    sql: ${response}.entityurn ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
