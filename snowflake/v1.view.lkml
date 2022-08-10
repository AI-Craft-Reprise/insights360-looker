view: v1 {
  sql_table_name: snowflake_extractions.v1 ;;
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

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: genpop_count {
    type: number
    sql: ${TABLE}.genpop_count ;;
  }

  dimension: genpop_percent {
    type: number
    sql: ${TABLE}.genpop_percent ;;
    value_format: "0.0%"
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
    primary_key: yes
  }

  dimension: overall_index {
    type: number
    sql: ${TABLE}.overall_index ;;
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

  dimension: table {
    type: string
    sql: ${TABLE}."table" ;;
  }

  dimension: target_count {
    type: number
    sql: ${TABLE}.target_count ;;
  }

  dimension: target_percent {
    type: number
    sql: ${TABLE}.target_percent;;
    value_format: "0.0%"
  }

  dimension: target_total {
    type: number
    sql: ${TABLE}.target_total ;;
  }

  measure: gen_pop_total {
    type: max
    sql: ${genpop_total} ;;
  }

  # measure: target_percent_value {
  #   type: sum
  #   sql: ${target_percent} ;;
  #   value_format: "0.0%"
  # }

  # measure: genpop_percent_value {
  #   type: sum
  #   sql: ${genpop_percent} ;;
  #   value_format: "0.0%"
  # }

  measure: target {
    type: sum
    sql: ${target_count};;
  }

  measure: target_v2 {
    type: count_distinct
    sql: ${keyword};;
  }

  measure:total_target {
    type: sum
    sql: ${target_total};;
  }

  measure: target_percentage {
    type: number
    sql: ${target}/NULLIF(${total_target},0) ;;
    value_format_name: percent_2
  }

  measure: count {
    type: count
    drill_fields: [audience_name,keyword]
  }
}
