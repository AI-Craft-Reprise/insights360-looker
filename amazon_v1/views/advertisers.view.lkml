view: advertisers {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".advertisers
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

  dimension: response {
    type: string
    sql: ${_airbyte_data}.response ;;
    hidden: yes
  }

  dimension: advertiserid {
    type: string
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

  dimension: country  {
    type: string
    sql: ${response}.country ;;
  }

  dimension: timezone  {
    type: string
    sql: ${response}.timezone ;;
  }

  dimension: profileid  {
    type: string
    sql: ${response}.profileid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
