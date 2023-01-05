view: audience_insights_requests {
  sql_table_name: "airbyte-dev-linkedin-ads-glue-ctg-db".audience_insights_requests
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

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response;;
  }

  dimension: name {
    type: string
    sql: ${response}.name;;
  }

  dimension: created_at {
    hidden: yes
    type: string
    sql: ${response}.created_at;;
  }

  dimension: name_created_date {
    type: string
    sql: concat(${name},', ', ${created_at}, ' UTC') ;;
  }

  dimension: _airbyte_emitted_at {
    hidden: yes
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: targeting_criteria {
    type: string
    sql: ${response}.targeting_criteria;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
