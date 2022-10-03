view: audiences_with_advertisers {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".audiences_with_advertisers
    ;;
  suggestions: no

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

  measure: count {
    type: count
    drill_fields: []
  }
}
