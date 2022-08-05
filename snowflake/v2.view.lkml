view: v2 {
  sql_table_name: snowflake_extractions.v2 ;;
  suggestions: no

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }

  dimension: audience_size {
    type: string
    sql: ${TABLE}.audience_size ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: genpop_cnt {
    type: number
    sql: ${TABLE}.genpop_cnt ;;
  }

  dimension: genpop_count {
    type: number
    sql: ${TABLE}.genpop_count ;;
  }

  dimension: genpop_total {
    type: number
    sql: ${TABLE}.genpop_total ;;
  }

  dimension: infobase_version {
    type: string
    sql: ${TABLE}.infobase_version ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: partition_0 {
    type: string
    sql: ${TABLE}.partition_0 ;;
  }

  dimension: question_answer_concat {
    type: string
    sql: ${TABLE}.question_answer_concat ;;
  }

  dimension: question_level_1 {
    type: string
    sql: ${TABLE}.question_level_1 ;;
  }

  dimension: question_level_2 {
    type: string
    sql: ${TABLE}.question_level_2 ;;
  }

  dimension: question_level_3 {
    type: string
    sql: ${TABLE}.question_level_3 ;;
  }

  dimension: question_level_4 {
    type: string
    sql: ${TABLE}.question_level_4 ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: statement {
    type: string
    sql: ${TABLE}.statement ;;
  }

  dimension: target_cnt {
    type: number
    sql: ${TABLE}.target_cnt ;;
  }

  dimension: target_count {
    type: number
    sql: ${TABLE}.target_count ;;
  }

  dimension: target_total {
    type: number
    sql: ${TABLE}.target_total ;;
  }

  measure: count {
    type: count
    drill_fields: [audience_name]
  }
}
