view: content_insights {
  sql_table_name: "airbyte-@{env}-spotify-ads-glue-ctg-db".content_insights
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

  dimension: age_group_array_req {
    # hidden: yes
    sql: ${filters}.age_group ;;
  }

  dimension: gender_array_req {
    hidden: yes
    sql: ${filters}.gender ;;
  }

  dimension: country_array_req {
    hidden: yes
    sql: ${filters}.country ;;
  }

  dimension: response {
    hidden: yes
    type: string
    sql: ${_airbyte_data}.response ;;
  }

  dimension: content_info {
    hidden: yes
    type: string
    sql: ${response}.content_info ;;
  }

  dimension: name {
    type: string
    sql: ${content_info}.name ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p>;;
  }

  dimension: content_type {
    type: string
    sql: ${content_info}.content_type ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p>;;
  }

  dimension: uri {
    type: string
    sql: ${content_info}.uri ;;
  }

  dimension: field {
    type: string
    sql: ${response}.field ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;

  }

  dimension: aggregation {
    type: string
    sql: ${response}.aggregation ;;
    html: <p style="color: black; font-size:60%; text-align:center">{{ rendered_value }}</p> ;;

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
    type: number
    sql: ${response}.insight_value ;;
  }

  dimension: age_groups{
    group_label: "Dimensions"
    type: string
    sql: CASE WHEN ${dimension} = 'age_group' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["18-24", "25-34", "35-44", "45-54", "55-64", "65+"]
  }

  dimension: gender{
    group_label: "Dimensions"
    type: string
    sql: CASE WHEN ${dimension} = 'gender' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["UNKNOWN", "MALE", "FEMALE"]
  }

  dimension: time_of_day{
    group_label: "Dimensions"
    type: string
    sql: CASE WHEN ${dimension} = 'time_of_day' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["afternoon", "morning", "night"]
    order_by_field: time_of_day_sort
  }

  dimension: device{
    group_label: "Dimensions"
    type: string
    sql: CASE WHEN ${dimension} = 'device' THEN ${insight_key}

                                ELSE NULL END ;;
    # suggestions: ["desktop", "mobile", "tablet"]
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

  dimension: time_of_day_sort {
    hidden: yes
    type: number
    sql: case when ${time_of_day}='morning' then 1
    when ${time_of_day}='afternoon' then 2
    when ${time_of_day}='night' then 3
    end;;
    }

  # dimension: audience_key {
  #   type:  string
  #   sql: concat('Gender:(',array_join(${gender_array_req},','),') Country:(',array_join(${country_array_req},','),') Age Group:(',array_join(${age_group_array_req}, ','), ')') ;;
  #   link: {
  #     label: "Open dashboard for this audience"
  #     url: "https://initiativeinternal1.cloud.looker.com/dashboards/x?audienc_key={{value}}"
  #   }
  # }

  measure: value {
    type: number
    sql: ${insight_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
