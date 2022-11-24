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

  dimension: request {
    # hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
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

  dimension: hour_of_day {
    type: string
    sql: case when ${dimension} = 'time_of_day' then ${insight_key}
      else null end;;
    order_by_field: hour_sort
  }

  dimension: hour_sort {
    hidden: yes
    type: number
    sql: case when ${hour_of_day}= '0' then 1
              when ${hour_of_day}= '1' then 2
              when ${hour_of_day}= '2' then 3
              when ${hour_of_day}= '3' then 4
              when ${hour_of_day}= '4' then 5
              when ${hour_of_day}= '5' then 6
              when ${hour_of_day}= '6' then 7
              when ${hour_of_day}= '7' then 8
              when ${hour_of_day}= '8' then 9
              when ${hour_of_day}= '9' then 10
              when ${hour_of_day}= '10' then 11
              when ${hour_of_day}= '11' then 12
              when ${hour_of_day}= '12' then 13
              when ${hour_of_day}= '13' then 14
              when ${hour_of_day}= '14' then 15
              when ${hour_of_day}= '15' then 16
              when ${hour_of_day}= '16' then 17
              when ${hour_of_day}= '17' then 18
              when ${hour_of_day}= '18' then 19
              when ${hour_of_day}= '19' then 20
              when ${hour_of_day}= '20' then 21
              when ${hour_of_day}= '21' then 22
              when ${hour_of_day}= '22' then 23
              when ${hour_of_day}= '23' then 24
            else null end;;
    description: "Creating hour_sort dimension that will help us sort the string dimension hour_of_day
    in numerical order, from lowest to highest"
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
