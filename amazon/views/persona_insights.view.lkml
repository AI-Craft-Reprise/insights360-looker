view: persona_insights {
  sql_table_name: amazon.persona_insights ;;
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
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: advertiserid {
    type: string
    sql: ${response}.advertiserid ;;
  }

  dimension: topaudiences {
    type: string
    hidden: yes
    sql: ${response}.topaudiences ;;
  }

  dimension: thirdparty {
    type: string
    sql: ${topaudiences}.thirdparty ;;
  }

  dimension: lookalike {
    type: string
    hidden: yes
    sql: ${response}.lookalike ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
