connection: "insights_athena"

# include all the views
include: "/views/**/*.view"

datagroup: insights_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: insights_default_datagroup

explore: snap {

  join: age_groups {
    relationship: one_to_many
    sql: ,
  unnest(
    response.targeting_insights.categories.demographics.distribution.age_groups.insight
  ) t(age_groups) ;;
  }

  join: gender {
    relationship: one_to_many
    sql: ,
  unnest(
    response.targeting_insights.categories.demographics.distribution.gender.insight
  ) t(gender) ;;
  }

  join: languages {
    relationship: one_to_many
    sql: ,
  unnest(
    response.targeting_insights.categories.demographics.distribution.languages.insight
  ) t(languages) ;;
  }

  join: age_groups_gender {
    relationship: one_to_many
    sql: ,
  unnest(
    response.targeting_insights.categories.demographics.distribution.age_groups_gender.insight
  ) t(age_groups_gender) ;;
  }

  join: target_audience {
    relationship: one_to_many
    sql: ,
        unnest(
          response.targeting_insights
        ) t(target_audience);;
        }

  join: reference_audience {
    relationship: one_to_many
    sql: ,
        unnest(
          response.targeting_insights
        ) t(reference_audience);;
  }

}
