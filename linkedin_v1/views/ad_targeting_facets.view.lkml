view: ad_targeting_facets {
  sql_table_name: "airbyte-@{env}-linkedin-ads-glue-ctg-db".ad_targeting_facets
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

  dimension: facetname {
    type: string
    sql: ${response}.facetname ;;
  }

  dimension: urn {
  type: string
  sql: ${response}.urn ;;
  }

  dimension: entitytypes {
    type: string
    sql: ${response}.entitytypes ;;
  }

  dimension: availableentityfinders {
    type: string
    sql: ${response}.availableentityfinders ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
