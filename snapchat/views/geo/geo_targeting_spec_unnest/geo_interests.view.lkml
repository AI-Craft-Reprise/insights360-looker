view: geo_interests {

  view_label: "Targeting Audience Filters"

  dimension: geo_interest{
    hidden: yes
    type: string
    sql: ${TABLE} ;;
  }

}

view: geo_interest_category {
  derived_table: {
    sql: SELECT
          _airbyte_ab_id,
          geo_interest_category_id
      FROM ${audience_insights_dimension_category_geo.SQL_TABLE_NAME}
           AS audience_insights_dimension_category_geo
      , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interests)
      , unnest(interests.category_id) t(geo_interest_category_id)

      GROUP BY
      1,
      2 ;;
  }

  dimension: primary_key {
    type: string
    sql: concat(${_airbyte_ab_id}, ${geo_interest_category_id}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: _airbyte_ab_id {
    hidden: yes
  }

  dimension: geo_interest_category_id {
    label: "Interest Category ID"
    type: string
  }
}
