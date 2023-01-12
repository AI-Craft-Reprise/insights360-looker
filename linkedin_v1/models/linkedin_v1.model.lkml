connection: "insights_athena"

include: "/linkedin_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: ad_targeting_entities {
hidden: yes
}

explore: ad_targeting_facets {

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

explore: audience_insights {


  join: segmentations {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.value.audienceinsight.segmentations)
      AS t(segmentations) ;;
  }

  join: audience_insights_entities {
    relationship: one_to_many
    sql_on: ${segmentations.value}= ${audience_insights_entities.entity_urn} ;;
  }

  join: facets_urns_and_names {
    relationship: one_to_one
    sql_on: ${audience_insights.groupedby}=${facets_urns_and_names.facet_urn_key} ;;
  }

  join: entity_name_and_urn {
    relationship: one_to_one
    sql_on: ${segmentations.value}=${entity_name_and_urn.entity_urn_key} ;;
  }

  join: audience_request {
      relationship: one_to_many
      sql: CROSS JOIN UNNEST(_airbyte_data.request.body,'$.request.targetingCriteria.include')
        AS t(request) ;;
  }

  join: audience_insights_requests {
    relationship: many_to_one
    sql_on: ${audience_insights.audience_name}=${audience_insights_requests.name};;
  }

  join: audience_targeting_criteria {
    view_label: "Audience Targeting Criteria"
    relationship: many_to_many
    sql:  , unnest(${audience_insights_requests.response}.targeting_criteria) t(audience_targeting_criteria)
          ;;
  }
  join: audience_targeting_criteria_value {
    from: audience_targeting_criteria_value
    view_label: "Audience Targeting Criteria"
    relationship: one_to_many
    required_joins: [audience_targeting_criteria]
    sql:  , unnest(audience_targeting_criteria.value) t(audience_targeting_criteria_value)
      ;;
  }






# join: insights_req {
#     relationship: one_to_many
#     sql:  CROSS JOIN UNNEST(_airbyte_data.request.body)
#       AS t(body) ;;
# }


}

explore: job_functions {
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
