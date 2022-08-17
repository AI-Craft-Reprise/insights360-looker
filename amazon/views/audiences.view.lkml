view: audiences {
  sql_table_name: amazon.audiences ;;
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

  dimension: response {
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: profileid {
    type: string
    sql: ${response}.profileid ;;
  }

  dimension: audienceid {
    primary_key: yes
    type: string
    sql: ${response}.audienceid ;;
  }

  dimension: audiencename {
    type: string
    sql: ${response}.audiencename ;;
  }

  dimension: description {
    type: string
    sql: ${response}.description ;;
  }

  dimension: category {
    type: string
    sql: ${response}.category ;;
  }

  dimension: createdate {
    type: date
    sql: ${response}.createdate ;;
  }

  dimension: updatedate {
    type: date
    sql: ${response}.updatedate ;;
  }

  dimension: status {
    type: string
    sql: ${response}.status ;;
  }

  dimension: forecasts {
    hidden: yes
    type: string
    sql: ${response}.forecasts ;;
  }

  dimension: inventoryforecasts {
    hidden: yes
    type: string
    sql: ${forecasts}.inventoryforecasts ;;
  }

  dimension: all {
    hidden: yes
    type: string
    sql: ${inventoryforecasts}.all ;;
  }

  dimension: dailyreach {
    hidden: yes
    type: string
    sql: ${all}.dailyreach ;;
  }

  dimension: lowerboundinclusive {
    type: number
    sql: ${dailyreach}.lowerboundinclusive ;;
  }

  dimension: upperboundexclusive {
    type: number
    sql: ${dailyreach}.upperboundexclusive ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
