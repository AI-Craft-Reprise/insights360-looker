view: persona_demographics {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".persona_demographics
    ;;
  suggestions: no

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
    hidden: yes
  }

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
    hidden: yes
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
    hidden: yes
  }

  dimension: request {
    type: string
    hidden: yes
    sql: ${_airbyte_data}.request ;;
  }

  dimension: params {
    type: string
    hidden: yes
    sql: ${request}.params ;;
  }

  dimension: advertiserid_req {
    type: string
    sql: ${params}.advertiserid ;;
  }

  dimension: response {
    type: string
    hidden: yes
    sql: ${_airbyte_data}.response ;;
  }

  dimension: advertiserid {
    type: string
    sql: ${response}.advertiserid ;;
  }

  dimension: profileid {
    type: string
    sql: ${response}.profileid ;;
  }

  dimension: propertyownership {
    type: string
    sql: ${response}.propertyownership ;;
  }

  # unnest propertyownership, income,relationship,gender,age

  measure: count {
    type: count
    drill_fields: []
  }
}
