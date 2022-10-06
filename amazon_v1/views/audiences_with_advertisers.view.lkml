view: audiences_with_advertisers {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".audiences_with_advertisers
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

  dimension: status {
    type: string
    sql: ${response}.status ;;
  }

  dimension: forecasts {
    type: string
    sql: ${response}.forecasts ;;
    hidden: yes
  }

  dimension: inventoryforecasts {
    type: string
    sql: ${forecasts}.inventoryforecasts ;;
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

  dimension: dailyreach_lowerboundinclusive {
    label: "Daily Reach Lower Bound"
    type: string
    sql: ${dailyreach}.lowerboundinclusive ;;
  }

  dimension: dailyreach_upperboundexclusive {
    label: "Daily Reach Upper Bound"
    type: string
    sql: ${dailyreach}.upperboundexclusive ;;
  }

  dimension: dailyimpressions {
    type: string
    sql: ${all}.dailyimpressions ;;
    hidden: yes
  }

  dimension: dailyimpressions_lowerboundinclusive {
    label: "Daily Impressions Lower Bound"
    type: string
    sql: ${dailyimpressions}.lowerboundinclusive ;;
  }

  dimension: dailyimpressions_upperboundexclusive {
    label: "Daily Impressions Upper Bound"
    type: string
    sql: ${dailyimpressions}.upperboundexclusive ;;
  }

  dimension: fees {
    type: string
    sql: ${response}.fees ;;
  }

  # unnest fees - amount,currency, scale, feecalculationtype, impressionsupplytype

  dimension: profileid {
    type: string
    sql: ${response}.profileid ;;
  }

  dimension: advertiserid {
    type: string
    sql: ${response}.advertiserid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
