view: audience_insights_dimension_category_geo {
  sql_table_name: "airbyte-@{env}-snapchat-marketing-glue-ctg-db".audience_insights_dimension_category_geo
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

  dimension: metro_id {
    group_label: "Geo Distibution Name"
    sql: case when ${distribution_name}='metro_id' then ${distribution_name}
           else null end;;
  }

  dimension: region_id {
    group_label: "Geo Distibution Name"
    sql: case when ${distribution_name}='region_id' then ${distribution_name}
      else null end;;
  }

  dimension:  insight_id {
    type: string
    sql: ${response}.insight_id ;;
  }

  dimension: insight_name {
    type: string
    sql: ${response}.insight_name ;;
  }

  dimension: insight_target_audience_percent {
    type: string
    sql: ${response}.insight_target_audience_percent ;;
  }

  dimension:  insight_reference_audience_percent {
    type: string
    sql: ${response}.insight_reference_audience_percent ;;
  }

  dimension: insight_target_index_to_reference {
    type: string
    sql: ${response}.insight_target_index_to_reference ;;
  }

  dimension: insight_metadata {
    hidden: yes
    type: string
    sql: ${response}.insight_metadata ;;
  }

  dimension: regions {
    hidden: yes
    type: string
    sql: ${insight_metadata}.regions ;;
  }

  dimension: targeting_audience_size_minimum {
    type: string
    sql: ${response}.targeting_audience_size_minimum ;;
  }

  dimension: targeting_audience_size_maximum {
    type: string
    sql: ${response}.targeting_audience_size_maximum ;;
  }

  dimension: reference_audience_size_minimum {
    type: string
    sql: ${response}.reference_audience_size_minimum ;;
  }

  dimension: reference_audience_size_maximum {
    type: string
    sql: ${response}.reference_audience_size_maximum ;;
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
}
