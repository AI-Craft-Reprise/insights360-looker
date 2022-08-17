view: profiles {
  sql_table_name: amazon.profiles ;;
  suggestions: no

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response;;
  }

  dimension: profileid {
    primary_key: yes
    type: string
    sql: ${response}.profileid;;
  }

  dimension: countrycode {
    type: string
    sql: ${response}.countrycode;;
  }

  dimension: currencycode {
    type: string
    sql: ${response}.currencycode;;
  }

  dimension: timezone {
    type: string
    sql: ${response}.timezone;;
  }

  dimension: accountinfo {
    hidden: yes
    type: string
    sql: ${response}.accountinfo;;
  }

  dimension: marketplacestringid {
    type: string
    sql: ${accountinfo}.marketplacestringid;;
  }

  dimension: id {
    type: string
    sql: ${accountinfo}.id;;
  }

  dimension: type {
    type: string
    sql: ${accountinfo}.type;;
  }

  dimension: name {
    type: string
    sql: ${accountinfo}.name;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
