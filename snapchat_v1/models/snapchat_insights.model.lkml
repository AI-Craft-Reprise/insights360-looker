connection: "insights_athena"

include: "/snapchat_v1/views/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: audience_insights_dimension_category_demo{
  label: "Demo Insights"
  join: country {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (country);;
  }
  join: interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interests);;
  }

  join:  interest_category {
    from: interest_category
    view_label: "Targeting Audience Filters"
    relationship: one_to_many
    sql_on: ${audience_insights_dimension_category_demo._airbyte_ab_id} = ${interest_category._airbyte_ab_id}
      ;;
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

}

explore: audience_insights_dimension_category_interest {
  label: "Interest Insights"
  join: interest_country {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.base_spec.geos) t (interest_country);;
  }
  join: interest_geos {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.geos) t (interest_geos);;
  }
  join: interest_demo {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.demographics) t (interest_demo);;
  }
  join: interest_age_group   {
    from: interest_age_group
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [interest_demo]
    sql:  , unnest(interest_demo.age_groups) t(interest_age_group)
      ;;
  }
  join: interest_interests {
    relationship: many_to_one
    sql: , unnest (_airbyte_data.request.body.targeting_spec.interests) t (interest_interests);;
  }
  join:  interest_interest_category {
    from: interest_interest_category
    view_label: "Targeting Audience Filters"
    relationship: many_to_one
    required_joins: [interest_interests]
    sql:  , unnest(interest_interests.category_id) t(interest_interest_category)
      ;;
  }
}



explore: audience_insights_dimension_category_device {
  label: "Device Insights"
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
    from: device_interest_category
    view_label: "Targeting Audience Filters"
    relationship: one_to_many
    sql_on: ${audience_insights_dimension_category_device._airbyte_ab_id} = ${device_interest_category._airbyte_ab_id}
      ;;
  }
}




explore: audience_insights_dimension_category_geo {
  label: "Geo Insights"
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
