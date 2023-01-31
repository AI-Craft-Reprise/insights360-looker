view: audience_insights_dimension_category_demo {
  sql_table_name: "airbyte-@{env}-snapchat-marketing-glue-ctg-db".audience_insights_dimension_category_demo
    ;;

  dimension: _airbyte_ab_id {
    hidden: yes
    primary_key: yes
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

  dimension: response {
    type: string
    hidden: yes
    sql: ${_airbyte_data}.response ;;
  }

  dimension: category_name {
    type: string
    sql: ${response}.category_name ;;
  }

  dimension: distribution_name {
    type: string
    sql: ${response}.distribution_name ;;
  }

  dimension:  insight_id {
    hidden: yes
    type: string
    sql: ${response}.insight_id ;;
  }

  dimension: insight_name {
    type: string
    sql: ${response}.insight_name ;;
  }

  dimension: insight_target_audience_percent {
    type: number
    sql: ${response}.insight_target_audience_percent ;;
  }

  dimension:  insight_reference_audience_percent {
    type: number
    sql: ${response}.insight_reference_audience_percent ;;
  }

  dimension: insight_target_index_to_reference {
    type: number

    sql: ${response}.insight_target_index_to_reference ;;
  }

  dimension: insight_metadata {
    hidden: yes
    type: string
    sql: ${response}.insight_metadata ;;
  }

  dimension: gender {
    hidden: yes
    type: string
    sql: ${insight_metadata}.gender ;;
  }

  dimension: age_groups {
    hidden: yes
    type: string
    sql: ${insight_metadata}.age_groups ;;
  }

  dimension: targeting_audience_size_minimum {
    type: number
    sql: ${response}.targeting_audience_size_minimum ;;
  }

  dimension: targeting_audience_size_maximum {
    type: number
    sql: ${response}.targeting_audience_size_maximum ;;
  }

  dimension: reference_audience_size_minimum {
    type: number
    sql: ${response}.reference_audience_size_minimum ;;
  }

  dimension: reference_audience_size_maximum {
    type: number
    sql: ${response}.reference_audience_size_maximum ;;
  }

  dimension: life_events {
    sql: case when ${insight_name} LIKE ('Life Event%') then
        SUBSTRING (${insight_name}, 13, length(${insight_name})-13) end;;
  }

  dimension: marital_status{
    sql: case when ${insight_name} LIKE ('Marital Status%') then
      SUBSTRING (${insight_name}, 17, length(${insight_name})-17) end;;
  }

  dimension: home_status{
    sql: case when ${insight_name} LIKE ('Home Status%') then
      SUBSTRING (${insight_name}, 14, length(${insight_name})-14) end;;
  }

  dimension: presence_of_child{
    sql: case when ${insight_name} LIKE ('Presence of Child%') then
      SUBSTRING (${insight_name}, 20, length(${insight_name})-20) end;;
    order_by_field: presence_of_child_sort
  }

  dimension: presence_of_child_sort {
    hidden: yes
    type: number
    sql: case when ${presence_of_child}='Age: 0-3' then 1
              when ${presence_of_child}='Age: 4-6' then 2
              when ${presence_of_child}='Age: 7-9' then 3
              when ${presence_of_child}='Age: 10-12' then 4
              when ${presence_of_child}='Age: 13-15' then 5
              when ${presence_of_child}='Age: 16-18' then 6
 else null end
    ;;
  }


  dimension: occupation{
    sql: case when ${insight_name} LIKE ('Occupation%') then
      SUBSTRING (${insight_name}, 13, length(${insight_name})-13) end;;
  }

  dimension: education{
    sql: case when ${insight_name} LIKE ('Education%') then
      SUBSTRING (${insight_name}, 12, length(${insight_name})-12) end;;
  }

  dimension: income{
    type: string
    sql: case when ${insight_name} LIKE ('Household Income%') then
      SUBSTRING (${insight_name}, 19, length(${insight_name})-19) end;;
    order_by_field: income_sort
  }

  dimension: income_sort {
    hidden: yes
    type: number
    sql: case when ${income}='$1,000-$24,999' then 1
              when ${income}='$25,000-$49,999' then 2
              when ${income}='$50,000-$74,999' then 3
              when ${income}='$75,000-$99,999' then 4
              when ${income}='$100,000-$124,999' then 5
              when ${income}=' $125,000-$149,999' then 6
              when ${income}='$150,000-$174,999' then 7
              when ${income}='$175,000-$199,999' then 8
              when ${income}='$200,000-$249,999' then 9
              when ${income}='$250,000+' then 99 else null end
    ;;
  }



  measure: reference_audience_size_max {
    type: sum
    sql: ${reference_audience_size_maximum} ;;
  }

  measure: reference_audience_size_min {
    type: sum
    sql: ${reference_audience_size_minimum} ;;
  }

  measure: targeting_audience_size_max {
    type: sum
    sql: ${targeting_audience_size_maximum} ;;
  }

  measure: targeting_audience_size_min {
    type: sum
    sql: ${targeting_audience_size_minimum} ;;
  }

  measure: target_audience_percent {
    type: sum
    sql: ${insight_target_audience_percent} ;;
  }

  measure: reference_audience_percent {
    type: sum
    sql: ${insight_reference_audience_percent} ;;
  }

  measure: target_index_to_reference {
    type: sum
    sql: ${insight_target_index_to_reference} ;;
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
