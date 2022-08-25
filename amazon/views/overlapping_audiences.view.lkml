view: overlapping_audiences {
  sql_table_name: amazon.overlapping_audiences ;;
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

  dimension: requestedaudiencemetadata {
    hidden: yes
    type: string
    sql: ${response}.requestedaudiencemetadata;;
  }

  dimension: audienceid_req {
    type: string
    sql: ${requestedaudiencemetadata}.audienceid;;
  }

  dimension: name_req {
    type: string
    sql: ${requestedaudiencemetadata}.name;;
  }

  dimension: category_req {
    type: string
    sql: ${requestedaudiencemetadata}.category;;
  }

  dimension: audienceforecast_req {
    hidden: yes
    type: string
    sql: ${requestedaudiencemetadata}.audienceforecast;;
  }

  dimension: dailyreach_req {
    hidden: yes
    type: string
    sql: ${audienceforecast_req}.dailyreach;;
  }

  dimension: lowerbound {
    type: number
    sql: ${dailyreach_req}.lowerbound;;
  }

  dimension: upperbound {
    type: number
    sql: ${dailyreach_req}.upperbound;;
  }

  dimension: audiencemetadata {
    hidden: yes
    type: string
    sql: ${response}.audiencemetadata;;
  }

  dimension: audienceid_aud {
    type: string
    sql: ${audiencemetadata}.audienceid;;
  }

  dimension: name_aud {
    label: "Target Audience"
    type: string
    sql: ${audiencemetadata}.name;;
  }

  dimension: category_aud {
    label: "Target Audience Category"
    type: string
    sql: ${audiencemetadata}.category;;
  }

  dimension: audienceforecast_aud {
    hidden: yes
    type: string
    sql: ${audiencemetadata}.audienceforecast;;
  }

  dimension: dailyreach_aud {
    hidden: yes
    type: string
    sql: ${audienceforecast_aud}.dailyreach;;
  }

  dimension: lowerbound_aud {
    label: "Lowerbound"
    type: number
    sql: ${dailyreach_aud}.lowerbound;;
  }

  dimension: upperbound_aud {
    label: "Upperbound"
    type: number
    sql: ${dailyreach_aud}.upperbound;;
  }

  dimension: affinity {
    type: number
    sql: ${response}.affinity;;
    value_format: "0.00"
  }

  measure: affinity_total {
    type: sum
    sql: ${affinity} ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
