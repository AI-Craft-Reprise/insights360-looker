view: audience_targeting_criteria {

  dimension: urn {
    sql: ${TABLE}.urn ;;
  }


  }

# view: audience_targeting_criteria_value {
#   dimension: audience_targeting_criteria_value {
#     label: "Value"
#     sql: ${TABLE} ;;
#   }
# }

view: targeting_criteria_value {
  derived_table: {
    sql: SELECT
          _airbyte_ab_id,
          value
      FROM ${audience_insights_request.SQL_TABLE_NAME}
           AS audience_insights_request
      , unnest (_airbyte_data.response.targeting_criteria) t (criteria)
      , unnest(criteria.value) t(value)

      GROUP BY
      1,
      2 ;;
  }

  dimension: primary_key {
    type: string
    sql: concat(${_airbyte_ab_id}, ${value}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: _airbyte_ab_id {
    hidden: yes
  }

  dimension: value {
    label: "Targeting Criteria Value"
    type: string
  }
}
