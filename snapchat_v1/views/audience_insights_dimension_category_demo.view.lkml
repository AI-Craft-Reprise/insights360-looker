view: audience_insights_dimension_category_demo {
  sql_table_name: "airbyte-dev-snapchat-marketing-glue-ctg-db".audience_insights_dimension_category_demo
    ;;
  suggestions: no

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

  dimension: request {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: body {
    hidden: yes
    type: string
    sql: ${request}.body ;;
  }

  dimension: base_spec {
    hidden: yes
    type: string
    sql: ${body}.base_spec ;;
  }


  dimension: geos {
    # hidden: yes
    type: string
    sql: ${base_spec}.geos ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
