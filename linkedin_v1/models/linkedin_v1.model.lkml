connection: "insights_athena"

include: "/linkedin_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: ad_targeting_entities {
  join: ad_targeting_entities_organizations {
    type: full_outer
    relationship: many_to_many
    sql_on: ${ad_targeting_entities.faceturn}=${ad_targeting_entities_organizations.faceturn} ;;
      }
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

  join: ad_targeting_entities_organizations {
    relationship: one_to_many
    sql_on: ${ad_targeting_facets.urn}=${ad_targeting_entities_organizations.urn} ;;
  }

}

explore: audience_insights {


  join: segmentations {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.value.audienceinsight.segmentations)
      AS t(segmentations) ;;
  }

  join: ad_targeting_entities {
    relationship: one_to_one
    sql_on: ${segmentations.value}=${ad_targeting_entities.urn} ;;
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

  join: ad_targeting_entities_organizations {
    relationship: one_to_one
    sql_on: ${segmentations.value}=${ad_targeting_entities_organizations.urn} ;;
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
  join: country {
    type: cross
    relationship: many_to_many
  }
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
