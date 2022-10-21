view: profiles {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".profiles
    ;;
  # suggestions: no

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
    sql: ${_airbyte_data}.response;;
    hidden: yes
  }

  dimension: profileid {
    type: string
    sql: ${response}.profileid;;
    primary_key: yes
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
