connection: "@{connection}"

include: "/spotify_v1/**/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#


explore: audience_segment_insights {}


explore: content_insights {
  join: age {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.request.body.filters.age_group) t (age) ;;
  }
  join: gender {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.request.body.filters.gender) t (gender) ;;
  }
  join: content_country {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.request.body.filters.country) t (content_country) ;;
  }

  # join: content_insights_age_groups{
  #   from: content_insights_age_groups
  #   view_label: "Age Groups"
  #   sql_on: ${content_insights.request}=${content_insights_age_groups.request} and ${content_insights.uri}=${content_insights_age_groups.uri} ;;
  #   relationship: one_to_many
  # }

  # join: age_group_minutes_percent {
  #   view_label: "Age Group"
  #   sql_on: ${content_insights_age_groups.pk}=${age_group_minutes_percent.pk};;
  #   relationship: one_to_one
  # }

}


explore: listener_insights {
  join: listener_country {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.request.body.filters.country) t (listener_country) ;;
  }
  join: listener_age {
    relationship: one_to_many
    sql: , unnest (_airbyte_data.request.body.filters.age_group) t(listener_age) ;;
  }
  join: listener_gender {
    relationship: one_to_many
    sql: , unnest (_airbyte_data.request.body.filters.gender) t(listener_gender) ;;
  }
}
