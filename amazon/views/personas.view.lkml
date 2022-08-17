view: personas {
  sql_table_name: amazon.personas ;;
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
    sql: ${_airbyte_data}.response;;
  }

  dimension: advertiserid {
    type: string
    sql: ${response}.advertiserid;;
  }

  dimension: profileid {
    type: string
    sql: ${response}.profileid;;
  }

  dimension: lastmodified {
    type: date
    sql: ${response}.lastmodified;;
  }

  dimension: expression {
    hidden: yes
    type: string
    sql: ${response}.expression;;
  }

  dimension: audiences {
    hidden: yes
    type: string
    sql: ${expression}.audiences;;
  }

  dimension: name {
    type: string
    sql: ${response}.name;;
  }

  dimension: personaid {
    primary_key: yes
    type: string
    sql: ${response}.personaid;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
