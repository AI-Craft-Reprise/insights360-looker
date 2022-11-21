connection: "insights_athena"

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
  join: country {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.request.body.filters.country) t (country) ;;
  }
}


explore: listener_insights {}
