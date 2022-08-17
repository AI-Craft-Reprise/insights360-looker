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
    sql: ${audienceforecast_req}.category;;
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
    type: string
    sql: ${audiencemetadata}.audienceid;;
  }

  dimension: category_aud {
    type: string
    sql: ${audiencemetadata}.audienceid;;
  }

  dimension: audienceforecast_aud {
    hidden: yes
    type: string
    sql: ${audiencemetadata}.audienceforecast;;
  }

  dimension: dailyreach_aud {
    hidden: yes
    type: string
    sql: ${audienceforecast_aud}.category;;
  }

  dimension: lowerbound_aud {
    type: number
    sql: ${dailyreach_aud}.lowerbound;;
  }

  dimension: upperbound_aud {
    type: number
    sql: ${dailyreach_aud}.upperbound;;
  }

  dimension: affinity {
    type: number
    sql: ${dailyreach_aud}.affinity;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
