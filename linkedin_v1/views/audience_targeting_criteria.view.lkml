view: audience_targeting_criteria {

  view_label: "Targeting Audience Filters"

  dimension: urn {
    # hidden: yes
    sql: ${TABLE}.urn ;;
  }
}

view: targeting_criteria_value {
  derived_table: {
    sql: SELECT
          _airbyte_ab_id,
          targeting_criteria_value
      FROM ${audience_insights_requests.SQL_TABLE_NAME}
           AS audience_insights_request
      , unnest (_airbyte_data.response.targeting_criteria) t (audience_targeting_criteria)
      , unnest(audience_targeting_criteria.value) t(targeting_criteria_value)

      GROUP BY
      1,
      2 ;;
  }
  dimension: primary_key {
    type: string
    sql: concat(${_airbyte_ab_id}, ${targeting_criteria_value}) ;;
    primary_key: yes
    hidden: yes
  }
  dimension: _airbyte_ab_id {
    # hidden: yes
  }
  dimension: targeting_criteria_value {
    label: "Targeting Criteria Value"
    type: string
  }
}
