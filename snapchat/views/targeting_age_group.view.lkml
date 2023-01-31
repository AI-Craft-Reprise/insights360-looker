view: targeting_age_group {
  sql_table_name: "airbyte-@{env}-snapchat-marketing-glue-ctg-db".targeting_age_group
    ;;

  dimension: _airbyte_ab_id {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    hidden: yes
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: age_group {
    hidden: yes
    type: string
    sql: ${response}.age_group ;;
  }

  dimension: id {
    type: string
    sql: ${age_group}.id ;;
  }

  dimension: name {
    type: string
    sql: ${age_group}.name ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
