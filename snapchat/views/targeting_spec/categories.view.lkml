view: categories {
  sql_table_name: raw_snap_extractions.categories ;;
  drill_fields: [interest_id]
  suggestions: no
  label: "Targeting_Spec"

  dimension: interest_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: interest_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: interest_parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  measure: interest_count {
    type: count
    drill_fields: [interest_id, interest_name]
  }
}
