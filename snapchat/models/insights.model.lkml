connection: "insights_athena"

# include all the views
include: "/snapchat/views/**/*.view"

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

  join: base_spec_geos {
    relationship: one_to_many
    sql: ,
        unnest(
          request.base_spec.geos
        ) t(base_spec_geos) ;;
  }

  join: targeting_spec_geos {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.geos
        ) t(targeting_spec_geos) ;;
  }

  join: targeting_spec_interests {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.interests
        ) t(targeting_spec_interests) ;;
  }

  join: targeting_spec_age_groups {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.demographics
        ) t(targeting_spec_age_groups) ;;
  }

  join: targeting_spec_gender {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.demographics
        ) t(targeting_spec_gender) ;;
  }


}
