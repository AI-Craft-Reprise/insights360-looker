view: audience_insights_requests {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".audience_insights_requests
    ;;

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: response {
    type: string
    sql: ${_airbyte_data}.response;;
  }

  dimension: name {
    type: string
    sql: ${response}.name;;
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
