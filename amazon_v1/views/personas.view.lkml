view: personas {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".personas
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

  dimension: lastmodified {
    type: date
    sql: ${response}.lastmodified ;;
  }

  dimension: expression {
    type: string
    sql: ${response}.expression ;;
  }

  dimension: audiences {
    type: string
    sql: ${expression}.audiences ;;
  }

  # unnest if needed

  dimension: name {
    type: string
    sql: ${response}.name ;;
  }

  dimension: personaid {
    type: string
    sql: ${response}.personaid ;;
    primary_key: yes
  }

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
