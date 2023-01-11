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
  join: age_group   {
    from: age_group
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [demo]
    sql:  , unnest(demo.age_groups) t(age_group)
      ;;
  }
  join: interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interests);;
  }
  join:  interest_category {
    from: interest_category
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [interests]
    sql:  , unnest(interests.category_id) t(interest_category)
      ;;
  }
  # join: targeting_interests_dlxc {
  #   type: inner
  #   relationship: one_to_one
  #   sql_on: ${interest_category.category_id}=${targeting_interests_dlxc.id} ;;
  # }
}

explore: audience_insights_dimension_category_interest {
  join: targeting_categories {
    type: left_outer
    relationship: one_to_one
    sql_on: ${audience_insights_dimension_category_interest.insight_id}=${targeting_categories.id} ;;
  }
}



explore: audience_insights_dimension_category_device {
  join: device_country {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (device_country);;
  }
  join: device_geos {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.geos) t (device_geos);;
  }
  join: device_demo {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.demographics) t (device_demo);;
  }
  join: device_age_group   {
    from: age_group
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [device_demo]
    sql:  , unnest(device_demo.age_groups) t(device_age_group)
      ;;
  }
  join: device_interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (device_interests);;
  }
  join:  device_interest_category {
    from: interest_category
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [device_interests]
    sql:  , unnest(device_interests.category_id) t(device_interest_category)
      ;;
  }
}




explore: audience_insights_dimension_category_geo {
  join: country {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (country);;
  }
  join: geo_geos {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.geos) t (geo_geos);;
  }
  join: geo_demo {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.demographics) t (geo_demo);;
  }
  join: geo_age_group   {
    from: age_group
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [geo_demo]
    sql:  , unnest(geo_demo.age_groups) t(geo_age_group)
      ;;
  }
  join: geo_interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (geo_interests);;
  }
  join:  geo_interest_category {
    from: interest_category
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [geo_interests]
    sql:  , unnest(geo_interests.category_id) t(geo_interest_category)
      ;;
  }
  }
