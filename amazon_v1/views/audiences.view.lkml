view: audiences {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".audiences
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
    type: :string
    sql: ${_airbyte_data}.response;;
    hidden: yes
  }

  dimension: audienceid {
    type: string
    sql: ${response}.audienceid ;;
    primary_key: yes
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
    suggestions: ["In-market", "Interest", "Life event", "Lifestyle"]
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
    label: "Daily Reach Lower Bound"
    type: number
    sql: ${dailyreach}.lowerboundinclusive ;;
  }

  dimension: upperboundexclusive {
    label: "Daily Reach Upper Bound"
    type: number
    sql: ${dailyreach}.upperboundexclusive ;;
  }

  measure: avg_bound {
    type: sum
    sql: (${lowerboundinclusive}+${upperboundexclusive})/2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: audienceid_array {
    sql: array_agg(distinct ${audienceid}) ;;
  }
}
