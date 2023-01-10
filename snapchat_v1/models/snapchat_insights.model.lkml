connection: "insights_athena"

include: "/snapchat_v1/views/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: audience_insights_dimension_category_demo{
  join: country {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (country);;
  }
  join: geos {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.geos) t (geos);;
  }
  join: demo {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.demographics) t (demo);;
  }
  # join:  {
  #   from: audience_targeting_criteria_value
  #   view_label: "Audience Targeting Criteria"
  #   relationship: one_to_many
  #   required_joins: [audience_targeting_criteria]
  #   sql:  , unnest(audience_targeting_criteria.value) t(audience_targeting_criteria_value)
  #     ;;
  # }

  join: interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interests);;
  }
  # join: targeting_interests_dlxc {
  #   type: inner
  #   relationship: one_to_one
  #   sql_on: ${interests.category_id}=${targeting_interests_dlxc.id} ;;
  # }
}

explore: audience_insights_dimension_category_interest {
  join: targeting_categories {
    type: left_outer
    relationship: one_to_one
    sql_on: ${audience_insights_dimension_category_interest.insight_id}=${targeting_categories.id} ;;
  }
}

explore: audience_insights_dimension_category_device {}

explore: audience_insights_dimension_category_geo {
  join: country {
    relationship: one_to_many
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (country);;
  }
}



# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
