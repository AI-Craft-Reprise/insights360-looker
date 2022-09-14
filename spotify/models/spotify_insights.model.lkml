connection: "insights_athena"

include: "/spotify/**/*.view"


# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


  explore: audience_segment_insights {

    join: gender {
      from: gender
      view_label: "Gender"
      sql_on: ${audience_segment_insights.request} = ${gender.request} and ${audience_segment_insights.segment_id} = ${gender.segment_id} and ${audience_segment_insights.country} = ${gender.country};;
      relationship: one_to_many
    }

    join: gender_minutes {
      view_label: "Gender"
      sql_on: ${gender.pk} = ${gender_minutes.pk};;
      relationship:  one_to_one
    }

    join: gender_minutes_percent {
      view_label: "Gender"
      sql_on: ${gender.pk} = ${gender_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: gender_streams {
      view_label: "Gender"
      sql_on: ${gender.pk} = ${gender_streams.pk};;
      relationship:  one_to_one
    }

    join: gender_streams_percent {
      view_label: "Gender"
      sql_on: ${gender.pk} = ${gender_streams_percent.pk};;
      relationship:  one_to_one
    }

    join: age_group {
      from: age_group
      view_label: "Age Group"
      sql_on: ${audience_segment_insights.request} = ${age_group.request} and ${audience_segment_insights.segment_id} = ${age_group.segment_id} and ${audience_segment_insights.country} = ${age_group.country};;
      relationship: one_to_many
    }

    join: age_group_minutes {
      view_label: "Age Group"
      sql_on: ${age_group.pk} = ${age_group_minutes.pk};;
      relationship:  one_to_one
    }

    join: age_group_minutes_percent {
      view_label: "Age Group"
      sql_on: ${age_group.pk} = ${age_group_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: age_group_streams {
      view_label: "Age Group"
      sql_on: ${age_group.pk} = ${age_group_streams.pk};;
      relationship:  one_to_one
    }

    join: age_group_streams_percent {
      view_label: "Age Group"
      sql_on: ${age_group.pk} = ${age_group_streams_percent.pk};;
      relationship:  one_to_one
    }


    # sql_always_where: ${age_groups} IS NOT NULL;;
  }


  explore: content_insights {}

  explore: listener_insights {}

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
