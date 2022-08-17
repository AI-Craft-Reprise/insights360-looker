view: persona_demographics {
  sql_table_name: amazon.persona_demographics ;;
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

  dimension: advertiserid {
    type: string
    sql: ${response}.advertiserid;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
