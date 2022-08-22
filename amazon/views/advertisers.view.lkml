view: advertisers {
  sql_table_name: amazon.advertisers ;;
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
    type: string
    hidden: yes
    sql: ${TABLE}.request ;;
  }

  dimension: body {
    type: string
    hidden: yes
    sql: ${request}.body ;;
  }

  dimension: headers {
    type: string
    hidden: yes
    sql: ${body}.headers ;;
  }

  dimension: amazon_advertising_api_clientid {
    type: string
    hidden: yes
    sql: ${headers}.amazon-advertising-api-clientid ;;
  }

  dimension: response {
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: profileid {
    type: string
    sql: ${response}.profileid ;;
  }

  dimension: advertiserid {
    type: string
    primary_key: yes
    sql: ${response}.advertiserid ;;
  }

  dimension: name {
    type: string
    sql: ${response}.name ;;
  }

  dimension: currency {
    type: string
    sql: ${response}.currency ;;
  }

  dimension: url {
    type: string
    sql: ${response}.url ;;
  }

  dimension: country {
    type: string
    sql: ${response}.country ;;
  }

  dimension: timezone {
    type: string
    sql: ${response}.timezone ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
