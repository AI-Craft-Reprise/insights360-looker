view: audience_segment_insights {
  sql_table_name: "airbyte-dev-spotify-ads-glue-ctg-db".audience_segment_insights
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

  dimension: request {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: body {
    hidden: yes
    type: string
    sql: ${request}.body ;;
  }

  dimension: filters {
    hidden: yes
    type: string
    sql: ${body}.filters ;;
  }

  dimension: country {
    type: string
    sql: ${filters}.country ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: segment_info {
    hidden: yes
    type: string
    sql: ${response}.segment_info ;;
  }

  dimension: name {
    type: string
    sql: ${segment_info}.name ;;
  }

  dimension: id {
    type: string
    sql: ${segment_info}.id ;;
  }

  dimension: field {
    type: string
    sql: ${response}.field ;;
  }

  dimension: aggregation {
    type: string
    sql: ${response}.aggregation ;;
  }

  dimension: dimension {
    type: string
    sql: ${response}.dimension ;;
  }

  dimension: insight_key {
    type: string
    sql: ${response}.insight_key ;;
  }

  dimension: insight_value {
    hidden: yes
    type: number
    sql: ${response}.insight_value ;;
  }

  measure: insights_value {
    type: sum
    sql: ${insight_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
