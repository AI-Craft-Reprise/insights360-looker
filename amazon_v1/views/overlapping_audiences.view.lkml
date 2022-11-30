view: overlapping_audiences {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".overlapping_audiences
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
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: marketplace {
    type: string
    sql: ${response}.marketplace ;;
  }

  dimension: requestedaudiencemetadata {
    hidden: yes
    type: string
    sql: ${response}.requestedaudiencemetadata ;;
  }

  dimension: req_audienceid {
    type: string
    sql: ${requestedaudiencemetadata}.audienceid ;;
  }

  dimension: req_name {
    type: string
    sql: ${requestedaudiencemetadata}.name ;;
  }

  dimension: req_audience_name {
    type: string
    sql: CASE WHEN ${req_category}='IN-Market' then SUBSTRING (${req_name}, 6)
              WHEN (${req_category}='Lookalike' and ${req_name} LIKE 'AL%') THEN SUBSTRING (${req_name}, 6)
              WHEN (${req_category}='Lookalike' and ${req_name} LIKE 'Lookalike%') THEN SUBSTRING (${req_name}, 13)
              WHEN (${req_category}='Lifestyle' and ${req_name} LIKE 'LS - %') THEN SUBSTRING (${req_name}, 6)
              WHEN (${req_category}='Lifestyle' and ${req_name} LIKE 'LS -%') THEN SUBSTRING (${req_name}, 5)
              WHEN (${req_category}='Life event' and ${req_name} LIKE 'LS - %') THEN SUBSTRING (${req_name}, 6)
              ELSE ${req_name} END;;
  }

  dimension: req_category {
    type: string
    sql: ${requestedaudiencemetadata}.category ;;
  }

  dimension: req_audienceforecast {
    hidden: yes
    type: string
    sql: ${requestedaudiencemetadata}.audienceforecast ;;
  }

  dimension: req_dailyreach {
    hidden: yes
    type: string
    sql: ${req_audienceforecast}audienceforecast}.dailyreach ;;
  }

  dimension: req_lowerbound {
    type: number
    sql: ${req_dailyreach}.lowerbound ;;
  }

  dimension: req_upperbound {
    type: number
    sql: ${req_dailyreach}.upperbound ;;
  }

  dimension: audiencemetadata {
    hidden: yes
    type: string
    sql: ${response}.audiencemetadata ;;
  }

  dimension: audienceid {
    type: string
    sql: ${audiencemetadata}.audienceid ;;
    primary_key: yes
  }

  dimension: name_full {
    hidden: yes
    type: string
    sql: ${audiencemetadata}.name ;;
  }

  dimension: name {
    label: "Audience"
    type: string
    sql: CASE WHEN SUBSTRING (${name_full}, 1, 2) IN ('LS', 'IM', 'IN', 'LE') then substring (${name_full}, 6)
          ELSE ${name_full} end;;
  }


  dimension: category {
    label: "Audience Category"
    suggestions: ["In-market", "Interest", "Life event", "Lifestyle"]
    type: string
    sql: ${audiencemetadata}.category ;;
  }

  dimension: filter_category {
    label: "Filter Audience Category"
    suggestions: ["In-market", "Interest", "Life event", "Lifestyle"]
    type: string
    sql: ${audiencemetadata}.category ;;
  }

  dimension: audienceforecast {
    hidden: yes
    type: string
    sql: ${audiencemetadata}.audienceforecast ;;
  }

  dimension: dailyreach {
    hidden: yes
    type: string
    sql: ${audienceforecast}.dailyreach ;;
  }

  dimension: lowerbound {
    type: number
    sql: ${dailyreach}.lowerbound ;;
  }

  dimension: upperbound {
    type: number
    sql: ${dailyreach}.upperbound ;;
  }

  dimension: affinity {
    type: number
    sql: ${response}.affinity ;;
  }

  measure: affinity_total {
    type: sum
    sql: ${affinity} ;;
    value_format: "0.00"
  }

  measure: lowerbound_m {
    hidden: yes
    type: number
    sql: ${lowerbound} ;;
  }

  measure: upperbound_m {
    hidden: yes
    type: number
    sql: ${upperbound} ;;
  }

  measure: average_bound {
    type: number
    sql: (${lowerbound_m}+${upperbound_m})/2;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
