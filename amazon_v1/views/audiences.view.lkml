view: audiences {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".audiences
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

  dimension: response {
    type: :string
    sql: ${_airbyte_data}.response;;
    hidden: yes
  }

  dimension: audienceid {
    type: string
    sql: ${response}.audienceid ;;
  }

  dimension: audiencename {
    label: "Audience Name"
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

  dimension: forecasts {
    type: string
    hidden: yes
    sql: ${response}.forecasts ;;
  }

  dimension: inventoryforecasts {
    type: string
    sql: ${forecasts}.inventoryforecasts;;
    hidden: yes
  }

  dimension: all {
    type: string
    sql: ${inventoryforecasts}.all ;;
    hidden: yes
  }

  dimension: dailyreach {
    type: string
    sql: ${all}.dailyreach ;;
    hidden: yes
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
