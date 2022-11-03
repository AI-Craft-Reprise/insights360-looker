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

    join: time_of_day  {
      from: time_of_day
      view_label: "Time of Day"
      sql_on: ${audience_segment_insights.request} = ${time_of_day.request} and ${audience_segment_insights.segment_id} = ${time_of_day.segment_id} and ${audience_segment_insights.country} = ${time_of_day.country};;
      relationship: one_to_many
    }

    join: time_of_day_minutes {
      view_label: "Time of Day"
      sql_on: ${time_of_day.pk} = ${time_of_day_minutes.pk};;
      relationship:  one_to_one
    }

    join: time_of_day_minutes_percent {
      view_label: "Time of Day"
      sql_on: ${time_of_day.pk} = ${time_of_day_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: time_of_day_streams {
      view_label: "Time of Day"
      sql_on: ${time_of_day.pk} = ${time_of_day_streams.pk};;
      relationship:  one_to_one
    }

    join: time_of_day_streams_percent {
      view_label: "Time of Day"
      sql_on: ${time_of_day.pk} = ${time_of_day_streams_percent.pk};;
      relationship:  one_to_one
    }

    join: device  {
      from: device
      view_label: "Device"
      sql_on: ${audience_segment_insights.request} = ${device.request} and ${audience_segment_insights.segment_id} = ${device.segment_id} and ${audience_segment_insights.country} = ${device.country};;
      relationship: one_to_many
    }

    join: device_minutes {
      view_label: "Device"
      sql_on: ${device.pk} = ${device_minutes.pk};;
      relationship:  one_to_one
    }

    join: device_minutes_percent {
      view_label: "Device"
      sql_on: ${device.pk} = ${device_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: device_streams {
      view_label: "Device"
      sql_on: ${device.pk} = ${device_streams.pk};;
      relationship:  one_to_one
    }

    join: device_streams_percent {
      view_label: "Device"
      sql_on: ${device.pk} = ${device_streams_percent.pk};;
      relationship:  one_to_one
    }

    join: days_of_week  {
      from: days_of_week
      view_label: "Days of Week"
      sql_on: ${audience_segment_insights.request} = ${days_of_week.request} and ${audience_segment_insights.segment_id} = ${days_of_week.segment_id} and ${audience_segment_insights.country} = ${days_of_week.country};;
      relationship: one_to_many
    }

    join: days_of_week_minutes {
      view_label: "Days of Week"
      sql_on: ${days_of_week.pk} = ${days_of_week_minutes.pk};;
      relationship:  one_to_one
    }

    join: days_of_week_minutes_percent {
      view_label: "Days of Week"
      sql_on: ${days_of_week.pk} = ${days_of_week_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: days_of_week_streams {
      view_label: "Days of Week"
      sql_on: ${days_of_week.pk} = ${days_of_week_streams.pk};;
      relationship:  one_to_one
    }

    join: days_of_week_streams_percent {
      view_label: "Days of Week"
      sql_on: ${days_of_week.pk} = ${days_of_week_streams_percent.pk};;
      relationship:  one_to_one
    }


    # sql_always_where: ${age_groups} IS NOT NULL;;
  }


  explore: content_insights {

    #   join: gender {
    #   from: gender
    #   view_label: "Gender"
    #   sql_on: ${content_insights.request} = ${gender.request} and ${content_insights.segment_id} = ${gender.segment_id} and ${content_insights.country} = ${gender.country};;
    #   relationship: one_to_many
    # }

    # join: gender_minutes {
    #   view_label: "Gender"
    #   sql_on: ${gender.pk} = ${gender_minutes.pk};;
    #   relationship:  one_to_one
    # }

    # join: gender_minutes_percent {
    #   view_label: "Gender"
    #   sql_on: ${gender.pk} = ${gender_minutes_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: gender_streams {
    #   view_label: "Gender"
    #   sql_on: ${gender.pk} = ${gender_streams.pk};;
    #   relationship:  one_to_one
    # }

    # join: gender_streams_percent {
    #   view_label: "Gender"
    #   sql_on: ${gender.pk} = ${gender_streams_percent.pk};;
    #   relationship:  one_to_one
    # }

    join: age_groups {
      from: age_groups
      view_label: "Age Group"
      sql_on: ${content_insights.request} = ${age_groups.request} and ${content_insights.uri} = ${age_groups.uri} and ${content_insights.country} = ${age_groups.country};;
      relationship: one_to_many
    }

    join: age_groups_minutes {
      view_label: "Age Group"
      sql_on: ${age_groups.pk} = ${age_groups_minutes.pk};;
      relationship:  one_to_one
    }

    join: age_groups_minutes_percent {
      view_label: "Age Group"
      sql_on: ${age_groups.pk} = ${age_groups_minutes_percent.pk};;
      relationship:  one_to_one
    }

    join: age_groups_streams {
      view_label: "Age Group"
      sql_on: ${age_groups.pk} = ${age_groups_streams.pk};;
      relationship:  one_to_one
    }

    join: age_groups_streams_percent {
      view_label: "Age Group"
      sql_on: ${age_groups.pk} = ${age_groups_streams_percent.pk};;
      relationship:  one_to_one
    }

    # join: time_of_day  {
    #   from: time_of_day
    #   view_label: "Time of Day"
    #   sql_on: ${audience_segment_insights.request} = ${time_of_day.request} and ${audience_segment_insights.segment_id} = ${time_of_day.segment_id} and ${audience_segment_insights.country} = ${time_of_day.country};;
    #   relationship: one_to_many
    # }

    # join: time_of_day_minutes {
    #   view_label: "Time of Day"
    #   sql_on: ${time_of_day.pk} = ${time_of_day_minutes.pk};;
    #   relationship:  one_to_one
    # }

    # join: time_of_day_minutes_percent {
    #   view_label: "Time of Day"
    #   sql_on: ${time_of_day.pk} = ${time_of_day_minutes_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: time_of_day_streams {
    #   view_label: "Time of Day"
    #   sql_on: ${time_of_day.pk} = ${time_of_day_streams.pk};;
    #   relationship:  one_to_one
    # }

    # join: time_of_day_streams_percent {
    #   view_label: "Time of Day"
    #   sql_on: ${time_of_day.pk} = ${time_of_day_streams_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: device  {
    #   from: device
    #   view_label: "Device"
    #   sql_on: ${audience_segment_insights.request} = ${device.request} and ${audience_segment_insights.segment_id} = ${device.segment_id} and ${audience_segment_insights.country} = ${device.country};;
    #   relationship: one_to_many
    # }

    # join: device_minutes {
    #   view_label: "Device"
    #   sql_on: ${device.pk} = ${device_minutes.pk};;
    #   relationship:  one_to_one
    # }

    # join: device_minutes_percent {
    #   view_label: "Device"
    #   sql_on: ${device.pk} = ${device_minutes_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: device_streams {
    #   view_label: "Device"
    #   sql_on: ${device.pk} = ${device_streams.pk};;
    #   relationship:  one_to_one
    # }

    # join: device_streams_percent {
    #   view_label: "Device"
    #   sql_on: ${device.pk} = ${device_streams_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: days_of_week  {
    #   from: device
    #   view_label: "Days of Week"
    #   sql_on: ${audience_segment_insights.request} = ${days_of_week.request} and ${audience_segment_insights.segment_id} = ${days_of_week.segment_id} and ${audience_segment_insights.country} = ${days_of_week.country};;
    #   relationship: one_to_many
    # }

    # join: days_of_week_minutes {
    #   view_label: "Days of Week"
    #   sql_on: ${days_of_week.pk} = ${days_of_week_minutes.pk};;
    #   relationship:  one_to_one
    # }

    # join: days_of_week_minutes_percent {
    #   view_label: "Days of Week"
    #   sql_on: ${days_of_week.pk} = ${days_of_week_minutes_percent.pk};;
    #   relationship:  one_to_one
    # }

    # join: days_of_week_streams {
    #   view_label: "Days of Week"
    #   sql_on: ${days_of_week.pk} = ${days_of_week_streams.pk};;
    #   relationship:  one_to_one
    # }

    # join: days_of_week_streams_percent {
    #   view_label: "Days of Week"
    #   sql_on: ${days_of_week.pk} = ${days_of_week_streams_percent.pk};;
    #   relationship:  one_to_one
    # }

  }

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
