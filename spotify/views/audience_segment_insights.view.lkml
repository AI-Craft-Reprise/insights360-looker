view: audience_segment_insights {
  sql_table_name: "airbyte-@{env}-spotify-ads-glue-ctg-db".audience_segment_insights
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
    hidden: yes
    type: string
    sql: ${_airbyte_data}.request ;;
  }

  dimension: body {
    hidden: yes
    type: string
    sql: ${request}.body ;;
  }

  dimension: filters {
    hidden: yes
    type: string
    sql: ${body}.filters ;;
  }

  dimension: country {
    type: string
    sql: ${filters}.country ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: segment_info {
    hidden: yes
    type: string
    sql: ${response}.segment_info ;;
  }

  dimension: name {
    label: "Audience Segment Name"
    type: string
    sql: ${segment_info}.name ;;
  }

  dimension: id {
    hidden: yes
    type: string
    sql: ${segment_info}.id ;;
  }

  dimension: field {
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
    type: string
    sql: ${response}.field ;;
  }

  dimension: aggregation {
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;
    type: string
    sql: ${response}.aggregation ;;
  }

  dimension: dimension {
    type: string
    sql: ${response}.dimension ;;
  }

  dimension: insight_key {
    type: string
    sql: ${response}.insight_key ;;
  }

  dimension: insight_value {
    # hidden: yes
    type: number
    sql: ${response}.insight_value ;;
  }

  measure: insights_value {
    type: number
    sql: ${insight_value} ;;
  }

  dimension: age_group {
    group_label: "Dimensions"
    type: string
    sql: case when ${dimension} = 'age_group' then ${insight_key}
          else null end;;
  }

  dimension: gender {
    group_label: "Dimensions"
    type: string
    sql: case when ${dimension} = 'gender' then ${insight_key}
      else null end;;
  }

  dimension: device {
    group_label: "Dimensions"
    type: string
    sql: case when ${dimension} = 'device' then ${insight_key}
      else null end;;
  }

  dimension: days_of_week {
    group_label: "Dimensions"
    type: string
    sql: case when ${dimension} = 'days_of_week' then ${insight_key}
      else null end;;
      order_by_field: days_of_week_sort
  }

  dimension: days_of_week_sort {
    hidden: yes
    type: number
    sql: case when ${days_of_week}='Mon' then 1
              when ${days_of_week}='Tue' then 2
              when ${days_of_week}='Wed' then 3
              when ${days_of_week}='Thu' then 4
              when ${days_of_week}='Fri' then 5
              when ${days_of_week}='Sat' then 6
              when ${days_of_week}='Sun' then 7
              end
              ;;
  }

  dimension: time_of_day {
    group_label: "Dimensions"
    type: string
    sql: case when ${dimension} = 'time_of_day' then ${insight_key}
      else null end;;
    order_by_field: time_of_day_sort
  }

  dimension: time_of_day_sort {
    hidden: yes
    type: number
    sql: case when ${time_of_day}='morning' then 1
              when ${time_of_day}='afternoon' then 2
              when ${time_of_day}='night' then 3
         end;;
    }


  measure: count {
    type: count
    drill_fields: []
  }
}
