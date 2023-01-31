connection: "@{connection}"

include: "/linkedin/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: persona_refresh {
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(created_at) FROM audience_insights_requests ;;
  interval_trigger: "5 minutes"
  # label: "desired label"
  description: "Setup for caching policy"
}

explore: audience_insights {

  persist_with: persona_refresh

  join: audience_insights_requests {
    relationship: one_to_one
    sql_on: ${audience_insights.audience_name}=${audience_insights_requests.name};;
  }

  join: segmentations {
    view_label: "Audience Insights"
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(audience_insights._airbyte_data.response.value.audienceinsight.segmentations)
      AS t(segmentations) ;;
  }

  join: audience_insights_entities {
    relationship: one_to_many
    sql_on: ${segmentations.value}= ${audience_insights_entities.entity_urn} ;;
  }

  join: audience_targeting_criteria {
    relationship: many_to_one
    sql: , unnest (${audience_insights_requests.targeting_criteria}) t (audience_targeting_criteria);;
  }

  join:  targeting_criteria_value {
    from: targeting_criteria_value
    view_label: "Targeting Audience Filters"
    relationship: one_to_many
    sql_on: ${audience_insights_requests._airbyte_ab_id}=${targeting_criteria_value._airbyte_ab_id}
      ;;
  }

  join: ad_targeting_entities{
    view_label: "Audience Definition Details"
    relationship: many_to_many
    sql_on: ${targeting_criteria_value.targeting_criteria_value}=${ad_targeting_entities.urn} ;;
  }

  join: audience_insights_entities_country {
    view_label: "Audience Definition Details"
    from:  audience_insights_entities
    relationship:one_to_one
    sql_on: ${targeting_criteria_value.targeting_criteria_value}= ${audience_insights_entities_country.urn} ;;
  }
}

explore: job_functions {
  hidden: yes
  join: job_seniorities {
    type: cross
    relationship: many_to_many
  }
  join: industry {
    type: cross
    relationship: many_to_many
  }
  join: company_size {
    type: cross
    relationship: many_to_many
  }
  # join: country {
  #   type: cross
  #   relationship: many_to_many
  # }
  # join: company {
  #   type: cross
  #   relationship: many_to_many
  # }
}

explore: audience_filter {
  label: "Audience Creator"
  view_label: "Audience Filters"
  join: audience_definition {
    view_label: "Audience Definition"
    type: cross
    relationship: many_to_one
  }
}


explore: ad_targeting_facets {
  description: "This explore is used to define elements of the new Audience"

  join: ad_targeting_entities {
    relationship: one_to_one
    sql_on: ${ad_targeting_facets.urn}=${ad_targeting_entities.facet} ;;
  }

  join: audience_insights {
    relationship: one_to_many
    sql_on: ${ad_targeting_facets.urn}=${audience_insights.groupedby} ;;
  }

  join: segmentations {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.value.audienceinsight.segmentations)
      AS t(segmentations) ;;
  }


}
