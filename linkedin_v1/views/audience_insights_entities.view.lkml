view: audience_insights_entities {
  sql_table_name: "airbyte-@{env}-linkedin-ads-glue-ctg-db".audience_insights_entities
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
    label: "Country Name"
    sql: ${response}.name ;;
  }

  dimension: urn {
    label: "Country URN"
    sql: ${response}.urn ;;
  }

  dimension: facet_urn {
    label: "Geo Facet URN"
    sql: ${response}.faceturn;;
  }

  dimension: entity_urn {
    hidden: yes
    sql: ${response}.entityurn ;;
  }


  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
