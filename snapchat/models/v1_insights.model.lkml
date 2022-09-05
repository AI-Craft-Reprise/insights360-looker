connection: "insights_athena"

# include all the views
include: "/snapchat/views/**/*.view"

datagroup: insights_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: insights_default_datagroup

explore: snap {
  always_filter: {
    filters: [base_spec_geos.country_code: "us",
              ]}
  # targeting_spec_interests_category_ids.interest_category_id: "SLC1",
  # targeting_spec_geos.country_code: "us",
  # targeting_spec_gender.targeting_spec_gender: "male"
  sql_always_where: ${gender.name}<>'gender_unknown' and ${age_groups.name}<>'unknown' ;;

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

  join: advanced_demographics {
    relationship: one_to_many
    sql: ,
        unnest(
          response.targeting_insights.categories.demographics.distribution.advanced_demographics.insight
        ) t(advanced_demographics) ;;
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

  join:  targeting_spec_interests_category_ids {
    required_joins: [targeting_spec_interests]
    relationship: one_to_many
    sql:  ,
        unnest(
          targeting_spec_interests.category_id
        ) t(targeting_spec_interests_category_ids)
    ;;
  }

  join: targeting_spec_age_groups {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.demographics
        ) t(targeting_spec_age_groups) ;;
  }

  join:  targeting_spec_age_groups_unnest {
    required_joins: [targeting_spec_age_groups]
    relationship: one_to_many
    sql:  ,
        unnest(
          targeting_spec_age_groups.age_groups
        ) t(targeting_spec_age_groups_unnest)
    ;;
  }

  join: targeting_spec_gender {
    relationship: one_to_many
    sql: ,
        unnest(
          request.targeting_spec.demographics
        ) t(targeting_spec_gender) ;;
  }

  join: categories {
    type: left_outer
    sql_on: ${targeting_spec_interests_category_ids.interest_category_id}=${categories.interest_id} ;;
    relationship: many_to_one
  }




}
