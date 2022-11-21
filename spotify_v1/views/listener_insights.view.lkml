view: listener_insights {
  sql_table_name: "airbyte-dev-spotify-ads-glue-ctg-db".listener_insights
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

  dimension: field {
    type: string
    sql: ${response}.field ;;
    # html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }

  dimension: insight_key {
    type: string
    sql: ${response}.insight_key ;;
  }

  dimension: insight_value {
    type: number
    sql: ${response}.insight_value ;;
  }

  dimension: aggregation {
    type: string
    sql: ${response}.aggregation ;;
    # html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
  }

  dimension: dimension {
    type: string
    sql: ${response}.dimension ;;
  }

  dimension: days_of_week {
    type: string
    sql: case when ${dimension} = 'days_of_week' then ${insight_key}
      else null end;;
    order_by_field: days_of_week_sort
  }

  dimension: days_of_week_sort {
    hidden: yes
    type: number
    sql: case when ${days_of_week}='MON' then 1
              when ${days_of_week}='TUE' then 2
              when ${days_of_week}='WED' then 3
              when ${days_of_week}='THU' then 4
              when ${days_of_week}='FRI' then 5
              when ${days_of_week}='SAT' then 6
              when ${days_of_week}='SUN' then 7
              end
              ;;
  }

  dimension: aggregation_sort {
    type: string
    sql: case when ${dimension} = 'days_of_week' then ${aggregation}
      else null end;;
    order_by_field: aggregation_sort_oder
  }

  dimension: aggregation_sort_oder {
    hidden: yes
    type: number
    sql: case when ${aggregation_sort}='hour' then 1
              when ${aggregation_sort}='day' then 2
              when ${aggregation_sort}='week' then 3
              when ${aggregation_sort}='month' then 4

              end
              ;;
  }

  measure: value {
    type: number
    sql: ${insight_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
