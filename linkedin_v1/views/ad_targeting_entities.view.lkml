view: ad_targeting_entities {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".ad_targeting_entities
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
