view: persona_insights {
  sql_table_name: "airbyte-@{env}-amazon-ads-glue-ctg-db".persona_insights
    ;;

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
    hidden: yes
    sql: ${_airbyte_data}.response ;;
  }

  dimension: advertiserid{
    type: string
    sql: ${response}.advertiserid ;;
  }

  dimension: profileid{
    type: string
    sql: ${response}.profileid ;;
  }


  dimension: personaid {
    type: string
    sql: ${personainsights}.personaid ;;
  }

  dimension: estimated_size {
    type: number
    sql: ${personainsights}.estimatedsize;;
    hidden: yes
  }

  dimension: min_estimated_size {
    type: number
    sql: ${estimated_size}.min;;
    html: <p style="color: black; font-size:80%; text-align:center">{{ rendered_value }}</p> ;;
    value_format: "0.0,,\" M\""
  }

  dimension: max_estimated_size {
    type: number
    sql: ${estimated_size}.max;;
    html: <p style="color: black; font-size:80%; text-align:center">{{ rendered_value }}</p> ;;
    value_format: "0.0,,\" M\""
  }

  dimension: personainsights{
    hidden: yes
    type: string
    sql: ${response}.personainsights ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  }
