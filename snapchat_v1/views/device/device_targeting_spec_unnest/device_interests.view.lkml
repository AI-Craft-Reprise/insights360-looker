view: device_interests {

    view_label: "Targeting Audience Filters"

    dimension: device_interest{
      hidden: yes
      type: string
      sql: ${TABLE} ;;
    }

  }

    view: device_interest_category {
      view_label: "Targeting Audience Filters"
      derived_table: {
        sql: SELECT
              _airbyte_ab_id,
              device_interest_category_id
          FROM ${audience_insights_dimension_category_device.SQL_TABLE_NAME}
               AS audience_insights_dimension_category_device
          , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interests)
          , unnest(interests.category_id) t(device_interest_category_id)

          GROUP BY
          1,
          2 ;;
      }

      dimension: primary_key {
        type: string
        sql: concat(${_airbyte_ab_id}, ${device_interest_category_id}) ;;
        primary_key: yes
        hidden: yes
      }

      dimension: _airbyte_ab_id {
        hidden: yes
      }

      dimension: device_interest_category_id {
        label: "Interest Category ID"
        type: string
      }
  }
