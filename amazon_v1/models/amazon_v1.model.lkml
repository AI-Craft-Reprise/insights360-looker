connection: "@{connection}"

include: "/amazon_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

datagroup: persona_refresh {
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(_airbyte_emitted_at) FROM personas ;;
  interval_trigger: "5 minutes"
  # label: "desired label"
  # description: "description string"
}

explore: overlapping_audiences{
    join: audiences {
      type: inner
    relationship: many_to_one
    sql_on: ${overlapping_audiences.audienceid}=${audiences.audienceid} ;;
  }
  }

explore: audiences {

  join: audience_definition {
    view_label: "Audience Definition"
    type: cross
    relationship: many_to_one
  }
}


explore: persona_insights {

  persist_with: persona_refresh

  join: inmarket {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.inmarket)
          AS t(inmarket) ;;
  }

  join: lifestyle {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.lifestyle)
      AS t(lifestyle) ;;
  }

  join: interests {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.interests)
      AS t(interests) ;;
  }

  join: lifeevents {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.lifeevents)
      AS t(lifeevents) ;;
  }

  join: topretailcategories {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topretailcategories)
      AS t(topretailcategories) ;;
  }

  join: lookalike {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.lookalike)
      AS t(lookalike) ;;
  }

  join: age {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.demographics.age)
      AS t(age) ;;
  }

  join: propertyownership {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.demographics.propertyownership)
      AS t(propertyownership) ;;
  }

  join: gender {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.demographics.gender)
      AS t(gender) ;;
  }

  join: relationship {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.demographics.relationship)
      AS t(relationship) ;;
  }

  join: income {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.demographics.income)
      AS t(income) ;;
  }

  join: personas {
    relationship: one_to_one
    type: left_outer
    sql_on: ${persona_insights.personaid}=${personas.personaid} ;;
  }

  join: persona_gender {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.response.expression.demographics.gender) t(persona_gender) ;;
  }

  join: persona_age {
    relationship: one_to_many
    sql: , UNNEST(_airbyte_data.response.expression.demographics.age) t(persona_age) ;;
  }

  join: audience_id {
    relationship: one_to_many
    sql_on: ${personas._airbyte_ab_id}=${audience_id._airbyte_ab_id};;
  }

  join: audiences {
    view_label: "Audience Name"
    relationship: many_to_one
    sql_on: ${audience_id.audience_id}=${audiences.audienceid} ;;
    fields: [audiences.audiencename]
  }
}



# explore: personas {
  # hidden: yes

#   persist_with: persona_refresh


#   join: persona_gender {
#     relationship: one_to_many
#     sql: , UNNEST(_airbyte_data.response.expression.demographics.gender) t(persona_gender) ;;
#   }

#   join: persona_age {
#     relationship: one_to_many
#     sql: , UNNEST(_airbyte_data.response.expression.demographics.age) t(persona_age) ;;
#   }

# }
