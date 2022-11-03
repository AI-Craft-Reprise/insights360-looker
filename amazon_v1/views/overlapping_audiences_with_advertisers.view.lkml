view: overlapping_audiences_with_advertisers {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".overlapping_audiences_with_advertisers
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

  dimension: adtype_req {
    type: string
    sql: ${params}.adtype ;;
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

  dimension: marketplace {
    type: string
    sql: ${response}.marketplace ;;
  }

  dimension: requestedaudiencemetadata {
    type: string
    sql: ${response}.requestedaudiencemetadata ;;
    hidden: yes
  }

  dimension: audienceid_req {
    type: string
    sql: ${requestedaudiencemetadata}.audienceid ;;
  }

  dimension: name_req {
    type: string
    sql: ${requestedaudiencemetadata}.name ;;
  }

  dimension: category_req {
    type: string
    sql: ${requestedaudiencemetadata}.category ;;
  }

  dimension: audienceforecast_req {
    type: string
    sql: ${requestedaudiencemetadata}.audienceforecast ;;
    hidden: yes
  }

  dimension: dailyreach_req {
    type: string
    sql: ${audienceforecast_req}.dailyreach ;;
    hidden: yes
  }

  dimension: dailyreach_lowerbound_req {
    label: "Daily Reach Lower Bound for Request Audience"
    type: number
    sql: ${dailyreach_req}.lowerbound ;;
  }

  dimension: dailyreach_upperbound_req {
    label: "Daily Reach Upper Bound for Request Audience"
    type: number
    sql: ${dailyreach_req}.upperbound ;;
  }

  dimension: dailyimpressions_req {
    type: string
    sql: ${audienceforecast_req}.dailyimpressions ;;
    hidden: yes
  }

  dimension: dailyimpressions_lowerbound_req {
    label: "Daily Impressions Lower Bound for Request Audience"
    type: number
    sql: ${dailyimpressions_req}.lowerbound ;;
  }

  dimension: dailyimpressions_upperbound_req {
    label: "Daily Impressions Upper Bound for Request Audience"
    type: number
    sql: ${dailyimpressions_req}.upperbound ;;
  }

  dimension: audiencemetadata {
    type: string
    sql: ${response}.audiencemetadata ;;
    hidden: yes
  }

  dimension: audienceid {
    type: string
    sql: ${audiencemetadata}.audienceid ;;
  }

  dimension: name {
    type: string
    sql: ${audiencemetadata}.name ;;
  }

  dimension: category {
    type: string
    sql: ${audiencemetadata}.category ;;
  }

  dimension: audienceforecast {
    type: string
    sql: ${audiencemetadata}.audienceforecast ;;
    hidden: yes
  }

  dimension: dailyreach {
    type: string
    sql: ${audienceforecast}.dailyreach ;;
    hidden: yes
  }

  dimension: dailyreach_lowerbound {
    label: "Daily Reach Lower Bound"
    type: number
    sql: ${dailyreach}.lowerbound ;;
  }

  dimension: dailyreach_upperbound {
    label: "Daily Reach Upper Bound"
    type: number
    sql: ${dailyreach}.upperbound ;;
  }

  dimension: dailyimpressions {
    type: string
    sql: ${audienceforecast}.dailyimpressions ;;
    hidden: yes
  }

  dimension: dailyimpressions_lowerbound {
    label: "Daily Impressions Lower Bound"
    type: number
    sql: ${dailyimpressions}.lowerbound ;;
  }

  dimension: dailyimpressions_upperbound {
    label: "Daily Impressions Upper Bound"
    type: number
    sql: ${dailyimpressions}.upperbound ;;
  }

  dimension: affinity {
    type: number
    sql: ${audiencemetadata}.affinity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
