view: personas {
  sql_table_name: "airbyte-@{env}-amazon-ads-glue-ctg-db".personas
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
    hidden: yes
    type: string
    sql: ${response}.lastmodified ;;
  }

  dimension: lastmodifieddate {
    sql: ${lastmodified} ;;
    type: date_time
  }

  dimension: expression {
    type: string
    sql: ${response}.expression ;;
    hidden: yes
  }

  dimension: demo {
    type: string
    sql: ${expression}.demographics ;;
  }

  dimension: gender {
    type: string
    sql: ${demo}.gender ;;
    html: <p style="color: black; font-size:80%; text-align:center">{{ rendered_value }}</p> ;;
  }

  dimension: age {
    type: string
    sql: ${demo}.age ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }

  dimension: audiences {
    type: string
    sql: ${expression}.audiences ;;
  }

  dimension: name {
    type: string
    sql: ${response}.name ;;
  }

  dimension: last_modified {
    type: string
    sql: substr(${lastmodified}, 1, 21) ;;
  }

  dimension: audience_name_date{
    type: string
    sql: concat(${name},', ', ${last_modified}, ' UTC') ;;
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
