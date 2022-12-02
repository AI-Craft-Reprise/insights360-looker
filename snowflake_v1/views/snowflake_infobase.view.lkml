view: snowflake_infobase {
  sql_table_name: "airbyte-dev-snowflake-glue-ctg-db".snowflake_infobase
    ;;

  dimension: _airbyte_ab_id {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
  }

  dimension: _airbyte_data {
    hidden: yes
    type: string
    sql: ${TABLE}._airbyte_data ;;
  }

  dimension: _airbyte_emitted_at {
    hidden: yes
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
  }

  dimension: category {
    type: string
    sql: ${_airbyte_data}.category ;;
  }

  dimension: statement {
    type: string
    sql: ${_airbyte_data}.statement ;;
  }

  dimension: genpop_cnt {
    type: number
    sql: ${_airbyte_data}.genpop_cnt ;;
  }

  dimension: genpop_total {
    type: number
    sql: ${_airbyte_data}.genpop_total ;;
  }

  dimension: genpop_percent {
    type: number
    sql: ${_airbyte_data}.genpop_percent ;;
  }

  dimension: target_cnt {
    type: number
    sql: ${_airbyte_data}.target_cnt ;;
  }

  dimension: target_total {
    type: number
    sql: ${_airbyte_data}.target_total ;;
  }

  dimension: target_percent {
    type: number
    sql: ${_airbyte_data}.target_percent ;;
  }

  dimension: target_index {
    type: number
    sql: ${_airbyte_data}.target_index ;;
  }

  dimension: agency {
    type: string
    sql: ${_airbyte_data}.agency ;;
  }

  dimension: client {
    type: string
    sql: ${_airbyte_data}.client ;;
  }

  dimension: audience_name {
    type: string
    sql: ${_airbyte_data}.audience_name ;;
  }

  dimension: created {
    type: string
    sql: ${_airbyte_data}.created ;;
  }

  dimension: infobase_version {
    type: string
    sql: ${_airbyte_data}.infobase_version ;;
  }

  dimension: source {
    type: string
    sql: ${_airbyte_data}.source ;;
  }

  dimension: audience_size {
    type: string
    sql: ${_airbyte_data}.audience_size ;;
  }

  dimension: _ab_source_file_last_modified {
    hidden: yes
    type: date
    sql: ${_airbyte_data}._ab_source_file_last_modified ;;
  }

  dimension: _ab_source_file_url {
    hidden: yes
    type: string
    sql: ${_airbyte_data}._ab_source_file_url ;;
  }

  dimension: demo_age {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_AGE_RANGE_HOH_18_24', 'DEMO_AGE_RANGE_HOH_25_29',
          'DEMO_AGE_RANGE_HOH_30_34', 'DEMO_AGE_RANGE_HOH_35_39', 'DEMO_AGE_RANGE_HOH_40_44',
          'DEMO_AGE_RANGE_HOH_45_49', 'DEMO_AGE_RANGE_HOH_50_54', 'DEMO_AGE_RANGE_HOH_55_59',
          'DEMO_AGE_RANGE_HOH_60_64', 'DEMO_AGE_RANGE_HOH_65PLUS') THEN  ${statement}
         ELSE NULL END;;
    description: "Filtering the Statement column to get only the rows with age range"
  }

  dimension: age_source {
    hidden: yes
    type: string
    sql: substring (${demo_age}, 20) ;;
    description: "Removing first 19 characters from demo_age (DEMO_AGE_RANGE)"
  }

  dimension: age {
    type: string
    sql: REPLACE(${age_source},'_','-');;
    description: "Replacing all underscores with dashes (30_34 is going to be 30-34)"
  }

  dimension: demo_ethnicity {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_ETHNICITY_INDIVIDUAL_AFRICAN_AMERICAN',
    'DEMO_ETHNICITY_INDIVIDUAL_ASIAN', 'DEMO_ETHNICITY_INDIVIDUAL_HISPANIC',
    'DEMO_ETHNICITY_INDIVIDUAL_WHITE') THEN  ${statement}
    ELSE NULL END;;
  }
dimension: geo_step1 {
  type: string
  sql: CASE WHEN ${category} = 'geo' THEN ${statement} else null end
;; hidden: yes
}
dimension: geo {
  type: string
  sql:substring (${geo_step1}, 9) ;;
}

  dimension: ethnicity_source {
    hidden: yes
    type: string
    sql: substring (${demo_ethnicity}, 27) ;;
  }

  dimension: ethnicity_step2{
    type: string
    sql: REPLACE(${ethnicity_source},'_',' ')
  ;;
  }
  dimension: ethnicity{
   type: string
   sql: concat(UPPER(SUBSTRING(${ethnicity_step2},1,1)),LOWER(SUBSTRING(${ethnicity_step2},2)));;
  }

  dimension: test {
    sql: case when length(ltrim(rtrim(${ethnicity}))) = 2 then (${ethnicity})
              when length(ltrim(rtrim(${ethnicity}))) > 2 and strpos(ltrim(rtrim(${ethnicity})), ' ') = 0
              then CONCAT(UPPER(SUBSTRING(${ethnicity},1,1)), '',lower(SUBSTRING(${ethnicity},2,length(${ethnicity}))))
              when strpos(ltrim(rtrim(${ethnicity})), ' ') <> 0 then
   CONCAT (UPPER(SUBSTRING(ltrim(rtrim(${ethnicity})),1,1)),
    lower(substring(${ethnicity},2,strpos(${ethnicity}, ' ')-1)),
    upper(substring(${ethnicity},strpos(${ethnicity}, ' ')+1,1)),
    lower(substring(${ethnicity},strpos(${ethnicity}, ' ')+2,length(${ethnicity}) - strpos(${ethnicity}, ' '))))

else ${ethnicity} end ;;
  }



  dimension: demo_gender {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_GENDER_FEMALE', 'DEMO_GENDER_MALE') THEN  ${statement}
         END;;
  }

  dimension: gender_step1 {
    type: string
    sql: substring (${demo_gender}, 13) ;;
  }
dimension: gender {
  type: string
  sql: concat(UPPER(SUBSTRING(${gender_step1},1,1)),LOWER(SUBSTRING(${gender_step1},2))) ;;
}
  dimension: demo_home_ownership {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_HOME_OWNER', 'DEMO_HOME_RENTER') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: home_ownership_source {
    hidden: yes
    type: string
    sql: substring (${demo_home_ownership}, 6) ;;
  }

  dimension: home_ownership {
    type: string
    sql: REPLACE(${home_ownership_source},'_',' ') ;;
  }

  dimension: demo_prefer_language {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_PREFER_LANGUAGE_INDIVIDUAL_BILINGUAL_SPANISH_ENGLISH',
              'DEMO_PREFER_LANGUAGE_INDIVIDUAL_NON_HISPANIC', 'DEMO_PREFER_LANGUAGE_INDIVIDUAL_SPANISH',
              'DEMO_PREFER_LANGUAGE_INDIVIDUAL_SPEAK_SPANISH') THEN  lower(${statement})
      ELSE NULL END;;
  }

  dimension: prefer_language_source{
    hidden: yes
    type: string
    sql: substring (${demo_prefer_language}, 33) ;;
  }

  dimension: prefer_language_capitalletters {
    hidden: yes
    type: string
    sql: REPLACE(${prefer_language_source},'_',' ') ;;
  }

  dimension: prefer_language {
    type: string
    sql: concat(UPPER(SUBSTRING(${prefer_language_capitalletters},1,1)),LOWER(SUBSTRING(${prefer_language_capitalletters},2)))  ;;
  }

  dimension: test1 {
    sql: case when length(ltrim(rtrim(${prefer_language}))) = 2 then (${prefer_language})
              when length(ltrim(rtrim(${prefer_language}))) > 2 and strpos(ltrim(rtrim(${prefer_language})), ' ') = 0
              then CONCAT(UPPER(SUBSTRING(${prefer_language},1,1)), '',lower(SUBSTRING(${prefer_language},2,length(${prefer_language}))))
              when strpos(ltrim(rtrim(${prefer_language})), ' ') <> 0 then
   CONCAT (UPPER(SUBSTRING(ltrim(rtrim(${prefer_language})),1,1)),
    lower(substring(${prefer_language},2,strpos(${prefer_language}, ' ')-1)),
    upper(substring(${prefer_language},strpos(${prefer_language}, ' ')+1,1)),
    lower(substring(${prefer_language},strpos(${prefer_language}, ' ')+2,length(${prefer_language}) - strpos(${prefer_language}, ' '))))

    when strpos(ltrim(rtrim(${prefer_language})), ' ') <> 0  and length(ltrim(rtrim(${prefer_language}))) > 3 then
   CONCAT (UPPER(SUBSTRING(ltrim(rtrim(${prefer_language})),1,1)),
    lower(substring(${prefer_language},2,strpos(${prefer_language}, ' ')-1)),
    upper(substring(${prefer_language},strpos(${prefer_language}, ' ')+1,1)),
    lower(substring(${prefer_language},strpos(${prefer_language}, ' ')+2,length(${prefer_language}) - strpos(${prefer_language}, ' '))))


      else ${prefer_language} end ;;
  }

  dimension: demo_presence_of_children{
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_PRESENCE_OF_CHILDREN_N', 'DEMO_PRESENCE_OF_CHILDREN_Y') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: presence_of_children_source {
    hidden: yes
    type: string
    sql: substring (${demo_presence_of_children}, 27) ;;
  }

  dimension: presence_of_children {
    type: string
    sql:  case when ${presence_of_children_source} = 'N' then 'No'
               when ${presence_of_children_source} = 'Y' then 'Yes'
          end;;
    description: "Renaming N and Y to be No and Yes"
  }

  dimension: demo_household_size {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_HH_SIZE_INDIVIDUAL_1',
              'DEMO_HH_SIZE_INDIVIDUAL_2', 'DEMO_HH_SIZE_INDIVIDUAL_3',
              'DEMO_HH_SIZE_INDIVIDUAL_4', 'DEMO_HH_SIZE_INDIVIDUAL_5', 'DEMO_HH_SIZE_INDIVIDUAL_6',
              'DEMO_HH_SIZE_INDIVIDUAL_6PLUS', 'DEMO_HH_SIZE_INDIVIDUAL_7', 'DEMO_HH_SIZE_INDIVIDUAL_8',
              'DEMO_HH_SIZE_INDIVIDUAL_9') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: household_size {
    type: string
    sql: substring (${demo_household_size}, 25) ;;
  }

  dimension: demo_income {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_INCOME_LT_15K_1', 'DEMO_INCOME_15K_20K_1',
              'DEMO_INCOME_20K_30K_1', 'DEMO_INCOME_30K_50K', 'DEMO_INCOME_50K_75K',
              'DEMO_INCOME_75K_100K', 'DEMO_INCOME_100K_150K', 'DEMO_INCOME_150K_175K',
              'DEMO_INCOME_175K_200K', 'DEMO_INCOME_200K_250K', 'DEMO_INCOME_250KPLUS') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: income_source {
    hidden: yes
    type: string
    sql: substring (${demo_income}, 13) ;;
  }

  dimension: income_clean {
    hidden: yes
    type: string
    sql: case when ${income_source} = 'LT_15K_1'  then 'Less than 15K'
              when ${income_source} = '15K_20K_1' then '15K-20K'
              when ${income_source} = '20K_30K_1' then '20K-30K'
              else ${income_source}
              end;;
    description: "Removing _1 at the end of the string"
  }

  dimension: income {
    type: string
    order_by_field: income_sort
    sql: REPLACE(${income_clean},'_','-') ;;
    description: "NOTE: order_by_field indicates that we want to sort income dimension
                        based on the values of income_sort"
  }

  dimension: income_sort {
    hidden: yes
    type: number
    sql: case when ${income}= 'Less than 15K' then 1
              when ${income}= '15K-20K' then 2
              when ${income}= '20K-30K' then 3
              when ${income}= '30K-50K' then 4
              when ${income}= '50K-75K' then 5
              when ${income}= '75K-100K' then 6
              when ${income}= '100K-150K' then 7
              when ${income}= '150K-175K' then 8
              when ${income}= '175K-200K' then 9
              when ${income}= '200K-250K' then 10
              when ${income}= '250KPLUS' then 11
            else null end;;
    description: "Creating income_sort dimension that will help us sort the string dimension income
                  in numerical order, from lowest to highest"
  }

  dimension: demo_occupation {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_OCCUPATION_BLUE_COLLAR', 'DEMO_OCCUPATION_HOMEMAKER',
              'DEMO_OCCUPATION_MANAGERIAL', 'DEMO_OCCUPATION_PROFESSIONAL_OR_TECHNICAL',
              'DEMO_OCCUPATION_RETIRED','DEMO_OCCUPATION_SELF_EMPLOYED', 'DEMO_OCCUPATION_SERVICE',
              'DEMO_OCCUPATION_WHITE_COLLAR') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: occupation_source {
    hidden: yes
    type: string
    sql: substring (${demo_occupation}, 17) ;;
  }

  dimension: occupation {
    type: string
    sql: REPLACE(${occupation_source},'_',' ') ;;
  }

  # dimension: occupation_final {
  #   type: string
  #   sql: concat(upper(substr(${occupation},1,1)),substr(${occupation_step1},2,length(${occupation_step1})),' ','');;
  # }


  dimension: demo_marital_status {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_MARITAL_STATUS_MARRIED_1', 'DEMO_MARITAL_STATUS_SINGLE_1') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: marital_status_source {
    hidden: yes
    type: string
    sql: substring (${demo_marital_status}, 21) ;;
  }

  dimension: marital_status {
    type: string
    sql: REPLACE(${marital_status_source},'_1','') ;;
  }

  dimension: lifestyle_charity_causes_contribute {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('CHARITY_CAUSES_CONTRIBUTE_ARTS_CULTURAL_1YR',
      'CHARITY_CAUSES_CONTRIBUTE_EDUCATION_1YR', 'CHARITY_CAUSES_CONTRIBUTE_ENVIRONMENT_1YR',
      'CHARITY_CAUSES_CONTRIBUTE_HEALTH_1YR', 'CHARITY_CAUSES_CONTRIBUTE_LT_50_1YR',
      'CHARITY_CAUSES_CONTRIBUTE_METHOD_REWARDS_CARD_1YR', 'CHARITY_CAUSES_CONTRIBUTE_NON_RELIGIOUS',
      'CHARITY_CAUSES_CONTRIBUTE_NON_RELIGIOUS_1YR', 'CHARITY_CAUSES_CONTRIBUTE_NPR',
      'CHARITY_CAUSES_CONTRIBUTE_PBS_1YR', 'CHARITY_CAUSES_CONTRIBUTE_PBS_PAST',
      'CHARITY_CAUSES_CONTRIBUTE_POLITICAL_1YR', 'CHARITY_CAUSES_CONTRIBUTE_RELIGIOUS',
      'CHARITY_CAUSES_CONTRIBUTE_REWARDS_CARD', 'CHARITY_CAUSES_CONTRIBUTE_REWARDS_CARD_1YR',
      'CHARITY_CAUSES_CONTRIBUTE_SOCIAL_SERVICES_1YR') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: charity_causes_contribute {
    type: string
    sql: substring (${lifestyle_charity_causes_contribute}, 27) ;;
  }

  dimension: lifestyle_cpg_health_diet {
      hidden: yes
      type: string
      sql: CASE WHEN ${statement} IN ('CPG_HEALTH_DIET_GLUTEN_FREE', 'CPG_HEALTH_DIET_HIGH_FIBER',
      'CPG_HEALTH_DIET_HIGH_PROTEIN', 'CPG_HEALTH_DIET_LACTOSE_FREE', 'CPG_HEALTH_DIET_LOW_CARB',
      'CPG_HEALTH_DIET_LOW_CHOLESTEROL', 'CPG_HEALTH_DIET_LOW_FAT', 'CPG_HEALTH_DIET_LOW_SODIUM',
      'CPG_HEALTH_DIET_ORGANIC', 'CPG_HEALTH_DIET_OTHER_CONTROL', 'CPG_HEALTH_DIET_SEMI_VEGETERIAN',
      'CPG_HEALTH_DIET_SUGAR_FREE', 'CPG_HEALTH_DIET_VEGAN', 'CPG_HEALTH_DIET_VEGETARIAN') THEN  ${statement}
              ELSE NULL END;;
    }

  dimension: cpg_health_diet {
      type: string
      sql: substring (${lifestyle_cpg_health_diet}, 17) ;;
    }

  dimension: lifestyle_cpg_pet {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('CPG_PET_OWNER_CAT', 'CPG_PET_OWNER_DOG', 'CPG_PET_TYPE_BIRD',
    'CPG_PET_TYPE_HORSE') THEN  ${statement}
              ELSE NULL END;;
  }

  dimension: cpg_pet {
    type: string
    sql: substring (${lifestyle_cpg_pet}, 9) ;;
  }

  dimension: lifestyle_demo_behavior_affluent {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_BEHAVIOR_AFFLUENT_COUPLES_WITHOUT_CHILDREN',
    'DEMO_BEHAVIOR_AFFLUENT_HOMEOWNER', 'DEMO_BEHAVIOR_AFFLUENT_MOMS_OF_YOUNG_CHILDREN',
    'DEMO_BEHAVIOR_AFFLUENT_PARENTS', 'DEMO_BEHAVIOR_AFFLUENT_PARENTS_OF_TEENS',
    'DEMO_BEHAVIOR_AFFLUENT_SENIORS', 'DEMO_BEHAVIOR_AFFLUENT_SINGLE_MEN',
    'DEMO_BEHAVIOR_AFFLUENT_SINGLE_WOMEN') THEN  ${statement}
                    ELSE NULL END;;
  }

  dimension: demo_behavior_affluent {
    type: string
    sql: substring (${lifestyle_demo_behavior_affluent}, 24) ;;
  }

  dimension: lifestyle_demo_behavior {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_BEHAVIOR_DIETERS', 'DEMO_BEHAVIOR_FITNESS_WARRIORS',
    'DEMO_BEHAVIOR_HEALTH_ENTHUSIASTS', 'DEMO_BEHAVIOR_HIGHLY_AFFLUENT',
    'DEMO_BEHAVIOR_LOW_CALORIE_COOKS', 'DEMO_BEHAVIOR_MILLENNIAL_MOMS', 'DEMO_BEHAVIOR_MOMS_BIG_FAMILIES',
    'DEMO_BEHAVIOR_MOMS_OF_COLLEGE_STUDENTS', 'DEMO_BEHAVIOR_MOMS_OF_ELEMENTARY_SCHOOLERS',
    'DEMO_BEHAVIOR_MOMS_OF_HIGH_SCHOOLERS', 'DEMO_BEHAVIOR_MOMS_OF_MIDDLE_SCHOOLERS',
    'DEMO_BEHAVIOR_PARENTS_FIRST_TIME', 'DEMO_BEHAVIOR_PARENTS_TO_INFANTS_OR_TODDLERS',
    'DEMO_BEHAVIOR_SOCCER_MOMS') THEN  ${statement}
                          ELSE NULL END;;
  }

  dimension: demo_behavior {
    type: string
    sql: substring (${lifestyle_demo_behavior}, 15) ;;
  }

  dimension: lifestyle_demo_home_owner {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_HOME_OWNER', 'DEMO_HOME_RENTER') THEN  ${statement}
                                ELSE NULL END;;
  }

  dimension: demo_home_owner {
    type: string
    sql: substring (${lifestyle_demo_home_owner}, 11) ;;
  }

  dimension: lifestyle_demo_life_event {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_LIFE_EVENT_ENTERING_ADULTHOOD',
    'DEMO_LIFE_EVENT_HIGH_SCHOOL_GRADUATION', 'DEMO_LIFE_EVENT_NEW_MOVER_6M',
    'DEMO_LIFE_EVENT_NEW_PARENT_10_1YR', 'DEMO_LIFE_EVENT_NEW_PARENT_7_9M',
    'DEMO_LIFE_EVENT_NEW_PARENT_LTE_6M') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: life_event {
    type: string
    sql: substring (${lifestyle_demo_life_event}, 17) ;;
  }

  dimension: lifestyle_demo_occupation {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_OCCUPATION_BLUE_COLLAR', 'DEMO_OCCUPATION_DETAIL_ACCOUNT_EXEC',
      'DEMO_OCCUPATION_DETAIL_AGENT', 'DEMO_OCCUPATION_DETAIL_ATTORNEY', 'DEMO_OCCUPATION_DETAIL_BROKER_OR_STOCKTRADER',
      'DEMO_OCCUPATION_DETAIL_COSMETOLOGIST', 'DEMO_OCCUPATION_DETAIL_DOCTOR', 'DEMO_OCCUPATION_DETAIL_INSURANCE_OR_AGENT',
      'DEMO_OCCUPATION_DETAIL_LABORER', 'DEMO_OCCUPATION_DETAIL_LEGAL_SECRETARY', 'DEMO_OCCUPATION_DETAIL_NURSE',
      'DEMO_OCCUPATION_DETAIL_ORDERLY', 'DEMO_OCCUPATION_DETAIL_PILOT', 'DEMO_OCCUPATION_DETAIL_REALTOR',
      'DEMO_OCCUPATION_DETAIL_SALES', 'DEMO_OCCUPATION_HOH_BLUE_COLLAR_2', 'DEMO_OCCUPATION_HOH_HOMEMAKER_2',
      'DEMO_OCCUPATION_HOH_MANAGERIAL_2', 'DEMO_OCCUPATION_HOH_PROFESSIONAL_2', 'DEMO_OCCUPATION_HOH_RETIRED_2',
      'DEMO_OCCUPATION_HOH_SELF_EMPLOYED_2', 'DEMO_OCCUPATION_HOH_SERVICE', 'DEMO_OCCUPATION_HOH_WHITE_COLLAR_2',
      'DEMO_OCCUPATION_HOMEMAKER', 'DEMO_OCCUPATION_MANAGERIAL', 'DEMO_OCCUPATION_PROFESSIONAL_OR_TECHNICAL',
      'DEMO_OCCUPATION_RETIRED', 'DEMO_OCCUPATION_SELF_EMPLOYED', 'DEMO_OCCUPATION_SERVICE',
      'DEMO_OCCUPATION_WHITE_COLLAR') THEN  ${statement}
            ELSE NULL END;;
  }

  dimension: demo_occupation_lifestyle {
    type: string
    sql: substring (${lifestyle_demo_occupation}, 17) ;;
  }

  dimension: lifestyle_demo_prefer_language {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('DEMO_PREFER_LANGUAGE_INDIVIDUAL_BILINGUAL_SPANISH_ENGLISH',
      'DEMO_PREFER_LANGUAGE_INDIVIDUAL_NON_HISPANIC', 'DEMO_PREFER_LANGUAGE_INDIVIDUAL_SPANISH',
      'DEMO_PREFER_LANGUAGE_INDIVIDUAL_SPEAK_SPANISH') THEN  ${statement}
            ELSE NULL END;;
  }

  dimension: demo_prefer_language_lifestyle {
    type: string
    sql: substring (${lifestyle_demo_prefer_language}, 22) ;;
  }


  dimension: finance_finance_affluence {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('FINANCE_AFFLUENCE_HEALTHY', 'FINANCE_AFFLUENCE_MODERATE',
      'FINANCE_AFFLUENCE_MODEST') THEN  ${statement}
                  ELSE NULL END;;
  }

  dimension: finance_affluence {
    type: string
    sql: substring (${finance_finance_affluence}, 19) ;;
  }

  dimension: finance_finance {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('FINANCE_BANKING_AFFLUENT_FAMILIES', 'FINANCE_BANKING_AFFLUENT_PRE_RETIRED',
      'FINANCE_BANKING_AFFLUENT_SINGLES_COUPLES', 'FINANCE_BANKING_BEHAVIOR_MUTUAL_FUNDS',
      'FINANCE_BANKING_COMFORTABLE_SENIORS', 'FINANCE_BANKING_ENVIABLES', 'FINANCE_BANKING_LIMITEDS',
      'FINANCE_BANKING_LUXURY_SENIORS', 'FINANCE_BANKING_MAINSTREAM_FAMILIES', 'FINANCE_BANKING_MAINSTREAM_PRE_RETIRED',
      'FINANCE_BANKING_MAINSTREAM_SINGLES_COUPLES', 'FINANCE_BEHAVIOR_INTERNET_BANKING',
      'FINANCE_BEHAVIOR_PRICE_SENSITIVE_PENNY_PINCHERS') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: finance {
    type: string
    sql: substring (${finance_finance}, 9) ;;
  }

  dimension: home_home_energy_segment {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('HOME_ENERGY_SEGMENT_BUDGET_WATCHERS', 'HOME_ENERGY_SEGMENT_CREATURES_OF_COMFORT',
      'HOME_ENERGY_SEGMENT_FIRST_COSTERS', 'HOME_ENERGY_SEGMENT_GREEN_ACTIVISTS', 'HOME_ENERGY_SEGMENT_GREEN_INVESTORS',
      'HOME_ENERGY_SEGMENT_HANDS_ON_BELIEVERS', 'HOME_ENERGY_SEGMENT_LIVING_IN_THE_NOW', 'HOME_ENERGY_SEGMENT_PAYBACK_INVESTORS',
      'HOME_ENERGY_SEGMENT_PRAGMATISTS', 'HOME_ENERGY_SEGMENT_SHOW_ME_PARTICIPANTS', 'HOME_ENERGY_SEGMENT_TECH_FRONTIERSMEN',
      'HOME_ENERGY_SEGMENT_TECH_TO_LIVE', 'HOME_ENERGY_SEGMENT_UNPLUGGED') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: home_energy_segment {
    type: string
    sql: substring (${home_home_energy_segment}, 21) ;;
  }

  dimension: insurance_insurance_dynamics {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('INSURANCE_DYNAMICS_COUNTRY_MIDDLES', 'INSURANCE_DYNAMICS_FULL_HOUSE',
      'INSURANCE_DYNAMICS_GETTING_BY', 'INSURANCE_DYNAMICS_HANDS_FULL', 'INSURANCE_DYNAMICS_NEST_IS_EMPTY',
      'INSURANCE_DYNAMICS_PRICE_ISNT_PRIMARY', 'INSURANCE_DYNAMICS_SOLID_SUBURBANS',
      'INSURANCE_DYNAMICS_STRETCHED_SINGLE') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: insurance_dynamics {
    type: string
    sql: substring (${insurance_insurance_dynamics}, 20) ;;
  }

  dimension: interest_attitude_brand_interact {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('ATTITUDE_BRAND_INTERACT_ANONYMITY', 'ATTITUDE_BRAND_INTERACT_CROSS_DEVICE',
      'ATTITUDE_BRAND_INTERACT_FEEDBACK', 'ATTITUDE_BRAND_INTERACT_FRESH_CONTENT', 'ATTITUDE_BRAND_INTERACT_INFREQUENT',
      'ATTITUDE_BRAND_INTERACT_MULTIPLE_TOUCH', 'ATTITUDE_BRAND_INTERACT_SHAREABLE') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: attitude_brand_interact {
    type: string
    sql: substring (${interest_attitude_brand_interact}, 25) ;;
  }

  dimension: interest_interest {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('INTEREST_ADULT_EDUCATION', 'INTEREST_ART_GALLERIES', 'INTEREST_ARTS', 'INTEREST_AUTO_MECHANICS', 'INTEREST_AUTO_SHOWS',
      'INTEREST_BAKING', 'INTEREST_BARBECUING', 'INTEREST_BEACH', 'INTEREST_BIRD_WATCHING', 'INTEREST_BOOK_CLUBS', 'INTEREST_CAREER', 'INTEREST_CLASSICAL_MUSIC_PERFORMANCE',
      'INTEREST_COLLECTIBLES', 'INTEREST_COMMUNITY_CHARITIES', 'INTEREST_CONCERTS_RADIO', 'INTEREST_COOKING_FUN', 'INTEREST_COOKING_GENERAL', 'INTEREST_COUNTRY_MUSIC_PERFORMANCE',
      'INTEREST_CRAFTS', 'INTEREST_CROSSWORD_PUZZLES_1YR', 'INTEREST_CULTURAL_LIVING', 'INTEREST_DANCE_PERFORMANCES', 'INTEREST_DANCING_1YR', 'INTEREST_EDUCATION_ONLINE',
      'INTEREST_ENVIRONMENTAL_ISSUES', 'INTEREST_FANTASY_SPORTS_1YR', 'INTEREST_FASHION', 'INTEREST_FINANCE_INVESTING_GROUP', 'INTEREST_FINANCE_INVESTING_PERSONAL',
      'INTEREST_FINANCE_INVESTING_REAL_ESTATE', 'INTEREST_FOOD_WINES', 'INTEREST_GAMBLING_CASINO', 'INTEREST_GRANDCHILDREN', 'INTEREST_HOME_COOKING', 'INTEREST_HOME_DO_IT_YOURSELFERS',
      'INTEREST_HOME_FURNISHING_OR_DECOR', 'INTEREST_HOME_GARDENING', 'INTEREST_HOME_IMPROVEMENT', 'INTEREST_HOME_IMPROVEMENT_GROUP', 'INTEREST_HOME_UPSCALE_LIVING', 'INTEREST_KARAOKE',
      'INTEREST_LIVE_THEATER', 'INTEREST_MOTORCYCLING','INTEREST_MUSEUMS','INTEREST_OTHER_MUSIC_PERFORMANCE','INTEREST_OUTDOOR_BOATING_OR_SAILING','INTEREST_OUTDOOR_CAMPING_OR_HIKING',
      'INTEREST_OUTDOOR_FISHING','INTEREST_OUTDOOR_GROUP','INTEREST_OUTDOOR_HUNTING_OR_SHOOTING','INTEREST_PARENTING','INTEREST_PERFORMING_ARTS','INTEREST_PET_CAT','INTEREST_PET_DOG',
      'INTEREST_PET_OTHER','INTEREST_PHOTOGRAPHY','INTEREST_PLAYING_MUSIC','INTEREST_POLITICS','INTEREST_PURCHASE_ITEMS_CHILDREN','INTEREST_READING_COMIC_BOOKS','INTEREST_READING_GENERAL',
      'INTEREST_READING_MAGAZINES','INTEREST_READING_RELIGIOUS_OR_INSPIRATIONAL','INTEREST_READING_SCIENCE_FICTION','INTEREST_READING_TOP_SELLERS','INTEREST_RELIGIOUS_INSPIRATIONAL',
      'INTEREST_ROCK_MUSIC_PERFORMANCE','INTEREST_RV','INTEREST_SELF_IMPROVEMENT','INTEREST_SEWING_KNITTING','INTEREST_SPORTS_GOLF_PLAYER','INTEREST_SPORTS_GROUP','INTEREST_SPORTS_SNOW_SKIING',
      'INTEREST_SPORTS_SPECTATOR_FOOTBALL','INTEREST_SPORTS_SPECTATOR_NASCAR','INTEREST_SUDOKU_PUZZLES','INTEREST_SWEEPSTAKES_CONTESTS','INTEREST_TRAVEL_CRUISE_VACATION','INTEREST_TRAVEL_FAMILY_VACATION',
      'INTEREST_TRAVEL_TRAVEL_GROUP','INTEREST_ZOO') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: interest {
    type: string
    sql: substring (${interest_interest}, 10) ;;
  }

  dimension: invest_invest_segment {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('INVEST_SEGMENT_AFFLUENT_COUPLES_OR_SINGLES', 'INVEST_SEGMENT_AFFLUENT_FAMILIES_WITH_CHILDREN','INVEST_SEGMENT_AFFLUENT_PRE_RETIRED',
    'INVEST_SEGMENT_COMFORTABLE_SENIORS','INVEST_SEGMENT_ENVIABLES','INVEST_SEGMENT_LIMITEDS','INVEST_SEGMENT_LUXURY_SENIORS',
    'INVEST_SEGMENT_MAINSTREAM_COUPLES_OR_SINGLES','INVEST_SEGMENT_MAINSTREAM_FAMILIES_WITH_CHILDREN','INVEST_SEGMENT_MAINSTREAM_PRE_RETIRED',
    'INVEST_SEGMENT_RESTRAINED_SENIORS','INVEST_SEGMENT_STARTING_OUT') THEN  ${statement}
                        ELSE NULL END;;
  }

  dimension: invest_segment {
    type: string
    sql: substring (${invest_invest_segment}, 16) ;;
  }

  dimension: lifestyle_lifestyle_ent {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_ENT_MOVIES_COLLECTOR','LIFESTYLE_ENT_MOVIES_MUSIC','LIFESTYLE_ENT_MOVIES_WATCH_AT_HOME',
    'LIFESTYLE_ENT_MUSIC_AVID_LISTENER','LIFESTYLE_ENT_MUSIC_COLLECTOR','LIFESTYLE_ENT_MUSIC_MUSIC_PLAYER',
    'LIFESTYLE_ENT_MUSIC_OWNS_HOME_STEREO') THEN  ${statement}
                              ELSE NULL END;;
  }

  dimension: lifestyle_ent {
    type: string
    sql: substring (${lifestyle_lifestyle_ent}, 15) ;;
  }

  dimension: lifestyle_lifestyle_green {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_GREEN_LIVING', 'LIFESTYLE_GREEN_SOLAR_ENERGY') THEN  ${statement}
                                    ELSE NULL END;;
  }

  dimension: lifestyle_green {
    type: string
    sql: substring (${lifestyle_lifestyle_green}, 11) ;;
  }

  dimension: lifestyle_lifestyle_in_market {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_IN_MARKET_ENROLL_COOKING','LIFESTYLE_IN_MARKET_EXPECT_GRANDCHILD',
      'LIFESTYLE_IN_MARKET_GET_ENGAGED', 'LIFESTYLE_IN_MARKET_GET_MARRIED',
      'LIFESTYLE_IN_MARKET_GRADUATE_COLLEGE') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_in_market {
    type: string
    sql: substring (${lifestyle_lifestyle_in_market}, 21) ;;
  }

  dimension: lifestyle_lifestyle_personicx_fin {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_PERSONICX_FIN__FREEWHEELERS','LIFESTYLE_PERSONICX_FIN_ACTIVE_SAVERS','LIFESTYLE_PERSONICX_FIN_ADVENTUROUS_INVESTORS','LIFESTYLE_PERSONICX_FIN_ASKING_ADVICE',
      'LIFESTYLE_PERSONICX_FIN_BALANCE_VIGILANT','LIFESTYLE_PERSONICX_FIN_BRAND_VARIETY','LIFESTYLE_PERSONICX_FIN_BRANDED_INFLUENCE','LIFESTYLE_PERSONICX_FIN_BUDGET_OPTIMISTS','LIFESTYLE_PERSONICX_FIN_CIVIC_CENTERED',
      'LIFESTYLE_PERSONICX_FIN_COLLECTORS_CLUBS','LIFESTYLE_PERSONICX_FIN_COMFORT_ZONE','LIFESTYLE_PERSONICX_FIN_COMFORTABLE_BORROWERS','LIFESTYLE_PERSONICX_FIN_COUPON_CUTTERS','LIFESTYLE_PERSONICX_FIN_DAILY_DEMANDS',
      'LIFESTYLE_PERSONICX_FIN_DEAL_SEEKERS','LIFESTYLE_PERSONICX_FIN_EYE_ECONOMY','LIFESTYLE_PERSONICX_FIN_FLUENT_ADVISORS','LIFESTYLE_PERSONICX_FIN_FUTURE_FUNDAMENTALS','LIFESTYLE_PERSONICX_FIN_HEARTH_HOME',
      'LIFESTYLE_PERSONICX_FIN_IN_MOMENT','LIFESTYLE_PERSONICX_FIN_INDEPENDENT_INVESTORS','LIFESTYLE_PERSONICX_FIN_INFORMED_CONTROL','LIFESTYLE_PERSONICX_FIN_INFORMED_SHOPPERS','LIFESTYLE_PERSONICX_FIN_INVESTING_COLLECTIONS',
      'LIFESTYLE_PERSONICX_FIN_INVOLVED_INVESTORS','LIFESTYLE_PERSONICX_FIN_LEARN_PREPARE','LIFESTYLE_PERSONICX_FIN_LIMITED_TRADITIONALISTS','LIFESTYLE_PERSONICX_FIN_NATURALLY_ORGANIZED','LIFESTYLE_PERSONICX_FIN_ONLINE_AUTOMATION',
      'LIFESTYLE_PERSONICX_FIN_ONLINE_CONNECTORS','LIFESTYLE_PERSONICX_FIN_ONLINE_FINANCIERS','LIFESTYLE_PERSONICX_FIN_ONLINE_INFLUENCERS','LIFESTYLE_PERSONICX_FIN_ONLINE_LEADERS','LIFESTYLE_PERSONICX_FIN_ONLINE_LEARNERS',
      'LIFESTYLE_PERSONICX_FIN_ONLINE_MANAGERS','LIFESTYLE_PERSONICX_FIN_PERSONAL_SERVICE','LIFESTYLE_PERSONICX_FIN_PRESTIGE_SEEKERS','LIFESTYLE_PERSONICX_FIN_QUALITY_CONSCIOUS','LIFESTYLE_PERSONICX_FIN_QUALITY_PRICE',
      'LIFESTYLE_PERSONICX_FIN_REAL_RECOMMENDATIONS','LIFESTYLE_PERSONICX_FIN_SOLID_INVESTMENTS','LIFESTYLE_PERSONICX_FIN_SOPHISTICATED_ENVIRONMENTALISTS','LIFESTYLE_PERSONICX_FIN_SPONTANEOUS_SPENDERS',
      'LIFESTYLE_PERSONICX_FIN_STUDIED_PURCHASERS','LIFESTYLE_PERSONICX_FIN_TECHNOLOGY_TRENDERS','LIFESTYLE_PERSONICX_FIN_TEMPERATE_TECHNOLOGY','LIFESTYLE_PERSONICX_FIN_THRILL_RIDE','LIFESTYLE_PERSONICX_FIN_TRACTION_TODAY',
      'LIFESTYLE_PERSONICX_FIN_TRADITIONAL_MODERATION','LIFESTYLE_PERSONICX_FIN_TRADITIONAL_SAVERS','LIFESTYLE_PERSONICX_FIN_TRUST_TRIUMPHS','LIFESTYLE_PERSONICX_FIN_VALUE_SHOPPERS','LIFESTYLE_PERSONICX_FIN_WORK_SAVE',
      'LIFESTYLE_PERSONICX_FIN_WORTH_RISK') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_personicx_fin {
    type: string
    sql: substring (${lifestyle_lifestyle_personicx_fin}, 26) ;;
  }

  dimension: lifestyle_lifestyle_personicx_insurance {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_PERSONICX_INSURANCE_ASPIRING_AFFLUENCE','LIFESTYLE_PERSONICX_INSURANCE_CAREFUL_PLANNERS','LIFESTYLE_PERSONICX_INSURANCE_COMFORTABLE_RENTERS',
      'LIFESTYLE_PERSONICX_INSURANCE_ESTABLISHING_PRIORITIES','LIFESTYLE_PERSONICX_INSURANCE_MODEST_COUNTRY','LIFESTYLE_PERSONICX_INSURANCE_MODEST_RESTRAINT','LIFESTYLE_PERSONICX_INSURANCE_PERSONAL_FOCUS',
      'LIFESTYLE_PERSONICX_INSURANCE_PROSPEROUS_HOUSEHOLDS','LIFESTYLE_PERSONICX_INSURANCE_SECURED_PROSPERITY','LIFESTYLE_PERSONICX_INSURANCE_STABLE_INDEPENDENCE', 'LIFESTYLE_PERSONICX_INSURANCE_THRIFTY_HOMEOWNERS',
      'LIFESTYLE_PERSONICX_INSURANCE_THRIFTY_PRIORITIES','LIFESTYLE_PERSONICX_INSURANCE_THRIFTY_RENTERS') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_personicx_insurance {
    type: string
    sql: substring (${lifestyle_lifestyle_personicx_insurance}, 31) ;;
  }

  dimension: lifestyle_lifestyle_personicx_lifestage {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_PERSONICX_LIFESTAGE_ACTIVE_INVOLVED','LIFESTYLE_PERSONICX_LIFESTAGE_ACTIVE_LIFESTYLES','LIFESTYLE_PERSONICX_LIFESTAGE_BUSY_SCHEDULES','LIFESTYLE_PERSONICX_LIFESTAGE_CAREER_BUILDING','LIFESTYLE_PERSONICX_LIFESTAGE_CAREER_CENTERED',
      'LIFESTYLE_PERSONICX_LIFESTAGE_CAREERS_TRAVEL','LIFESTYLE_PERSONICX_LIFESTAGE_CARVING_TIME','LIFESTYLE_PERSONICX_LIFESTAGE_CASUAL_COMFORT','LIFESTYLE_PERSONICX_LIFESTAGE_CHILDREN_FIRST','LIFESTYLE_PERSONICX_LIFESTAGE_CITY_LIFE','LIFESTYLE_PERSONICX_LIFESTAGE_CITY_MIXERS',
      'LIFESTYLE_PERSONICX_LIFESTAGE_CLIMBING_LADDER','LIFESTYLE_PERSONICX_LIFESTAGE_CLUBS_CAUSES','LIFESTYLE_PERSONICX_LIFESTAGE_COLLEGIATE_CROWD','LIFESTYLE_PERSONICX_LIFESTAGE_COMFORTABLE_CORNERSTONES','LIFESTYLE_PERSONICX_LIFESTAGE_COMMUNITY_LIFE','LIFESTYLE_PERSONICX_LIFESTAGE_COMMUNITY_PILLARS',
      'LIFESTYLE_PERSONICX_LIFESTAGE_CORPORATE_CONNECTIONS','LIFESTYLE_PERSONICX_LIFESTAGE_COUNTRY_COMFORT','LIFESTYLE_PERSONICX_LIFESTAGE_COUNTRY_ENTHUSIASTS','LIFESTYLE_PERSONICX_LIFESTAGE_COUNTRY_WAYS','LIFESTYLE_PERSONICX_LIFESTAGE_CREATIVE_VARIETY','LIFESTYLE_PERSONICX_LIFESTAGE_ESTABLISHED_ELITE',
      'LIFESTYLE_PERSONICX_LIFESTAGE_FARM_HOME','LIFESTYLE_PERSONICX_LIFESTAGE_FAVORABLY_FRUGAL','LIFESTYLE_PERSONICX_LIFESTAGE_FIRM_FOUNDATIONS','LIFESTYLE_PERSONICX_LIFESTAGE_FIRMLY_ESTABLISHED','LIFESTYLE_PERSONICX_LIFESTAGE_FIRST_STEPS','LIFESTYLE_PERSONICX_LIFESTAGE_GETTING_ESTABLISHED',
      'LIFESTYLE_PERSONICX_LIFESTAGE_GOOD_NEIGHBORS','LIFESTYLE_PERSONICX_LIFESTAGE_GREAT_OUTDOORS','LIFESTYLE_PERSONICX_LIFESTAGE_HELPING_HANDS','LIFESTYLE_PERSONICX_LIFESTAGE_HOBBIES_SHOPPING','LIFESTYLE_PERSONICX_LIFESTAGE_HOME_GARDEN','LIFESTYLE_PERSONICX_LIFESTAGE_METRO_ACTIVE',
      'LIFESTYLE_PERSONICX_LIFESTAGE_METRO_MIX','LIFESTYLE_PERSONICX_LIFESTAGE_METRO_STRIVERS','LIFESTYLE_PERSONICX_LIFESTAGE_MID_AMERICANA','LIFESTYLE_PERSONICX_LIFESTAGE_MOBILE_MIXERS','LIFESTYLE_PERSONICX_LIFESTAGE_MOVIES_SPORTS','LIFESTYLE_PERSONICX_LIFESTAGE_OCCUPATIONAL_MIX',
      'LIFESTYLE_PERSONICX_LIFESTAGE_OFFICES_ENTERTAINMENT','LIFESTYLE_PERSONICX_LIFESTAGE_ON_GO','LIFESTYLE_PERSONICX_LIFESTAGE_OPEN_HOUSES','LIFESTYLE_PERSONICX_LIFESTAGE_OUT_ABOUT','LIFESTYLE_PERSONICX_LIFESTAGE_OUTDOOR_FERVOR','LIFESTYLE_PERSONICX_LIFESTAGE_OUTWARD_BOUND',
      'LIFESTYLE_PERSONICX_LIFESTAGE_PERSISTENT_PRODUCTIVE','LIFESTYLE_PERSONICX_LIFESTAGE_PRACTICAL_CAREFUL','LIFESTYLE_PERSONICX_LIFESTAGE_PRODUCTIVE_HAVENS','LIFESTYLE_PERSONICX_LIFESTAGE_ROLE_MODELS','LIFESTYLE_PERSONICX_LIFESTAGE_RURAL_ACTIVE','LIFESTYLE_PERSONICX_LIFESTAGE_RURAL_ADVENTURE',
      'LIFESTYLE_PERSONICX_LIFESTAGE_RURAL_COMMUNITY','LIFESTYLE_PERSONICX_LIFESTAGE_RURAL_MOBILE','LIFESTYLE_PERSONICX_LIFESTAGE_RURAL_PARENTS','LIFESTYLE_PERSONICX_LIFESTAGE_SCHOOLS_SHOPPING','LIFESTYLE_PERSONICX_LIFESTAGE_SETTING_GOALS','LIFESTYLE_PERSONICX_LIFESTAGE_SOLID_SURROUNDINGS',
      'LIFESTYLE_PERSONICX_LIFESTAGE_STAYING_HEALTHY','LIFESTYLE_PERSONICX_LIFESTAGE_STAYING_HOME','LIFESTYLE_PERSONICX_LIFESTAGE_STYLISH_STRIVING','LIFESTYLE_PERSONICX_LIFESTAGE_SUMMIT_ESTATES','LIFESTYLE_PERSONICX_LIFESTAGE_TENURED_PROPRIETORS','LIFESTYLE_PERSONICX_LIFESTAGE_TOP_PROFESSIONALS',
      'LIFESTYLE_PERSONICX_LIFESTAGE_URBAN_DIVERSITY','LIFESTYLE_PERSONICX_LIFESTAGE_WORK_CAUSES','LIFESTYLE_PERSONICX_LIFESTAGE_WORK_OUTDOORS','LIFESTYLE_PERSONICX_LIFESTAGE_WORK_PLAY',
      'LIFESTYLE_PERSONICX_LIFESTAGE_WORKING_ACTIVE') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_personicx_lifestage {
    type: string
    sql: substring (${lifestyle_lifestyle_personicx_lifestage}, 32) ;;
  }

  dimension: lifestyle_lifestyle_personicx_prime {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_PERSONICX_PRIME_01_NATURALLY_DIGITAL','LIFESTYLE_PERSONICX_PRIME_02_TECHONIMIZERS','LIFESTYLE_PERSONICX_PRIME_03_GAME','LIFESTYLE_PERSONICX_PRIME_04_LIVE_DIGITALLY','LIFESTYLE_PERSONICX_PRIME_05_ADVANCE_AMBITION','LIFESTYLE_PERSONICX_PRIME_06_STYLISH_INDEPENDENCE','LIFESTYLE_PERSONICX_PRIME_07_HOE_HOME','LIFESTYLE_PERSONICX_PRIME_08_ASPIRE_ADOPTER','LIFESTYLE_PERSONICX_PRIME_09_MOBILE_MANTRA','LIFESTYLE_PERSONICX_PRIME_10_MOBILE_MINUTE',
      'LIFESTYLE_PERSONICX_PRIME_11_FIELD_FAMILY','LIFESTYLE_PERSONICX_PRIME_12_FRUGAL_PHONENECTIONS','LIFESTYLE_PERSONICX_PRIME_13_SET_TREND','LIFESTYLE_PERSONICX_PRIME_14_DIRECT_ACTION','LIFESTYLE_PERSONICX_PRIME_15_YOUNG_TECHFLUENTS','LIFESTYLE_PERSONICX_PRIME_16_PREP_SUCCESS','LIFESTYLE_PERSONICX_PRIME_17_CONNECT_ASPIRATION','LIFESTYLE_PERSONICX_PRIME_18_PLAN_AHEAD','LIFESTYLE_PERSONICX_PRIME_19_ADVENTURE','LIFESTYLE_PERSONICX_PRIME_20_EXERCISE_OPTION',
      'LIFESTYLE_PERSONICX_PRIME_21_METRO_MOBILITES','LIFESTYLE_PERSONICX_PRIME_22_ENTERTAIN_PLAN','LIFESTYLE_PERSONICX_PRIME_23_METROVENIENCERS','LIFESTYLE_PERSONICX_PRIME_24_DEVICIBLY_MOBILE','LIFESTYLE_PERSONICX_PRIME_25_VALAVVY_VENUE','LIFESTYLE_PERSONICX_PRIME_26_AFFLUDIGITAL_ADVENTURE','LIFESTYLE_PERSONICX_PRIME_27_ACCOMPLISH_PRIORITY','LIFESTYLE_PERSONICX_PRIME_28_MEMORABLE_MOMENT','LIFESTYLE_PERSONICX_PRIME_29_SPORT_FUTURE','LIFESTYLE_PERSONICX_PRIME_30_FAMTECH_FUTURE',
      'LIFESTYLE_PERSONICX_PRIME_31_SMALL_TOWN_BIG_WORLD','LIFESTYLE_PERSONICX_PRIME_32_OUTDOOR_UNPLUG','LIFESTYLE_PERSONICX_PRIME_33_TECHSTREAM_LIVE','LIFESTYLE_PERSONICX_PRIME_34_CLICK_ADVANCE','LIFESTYLE_PERSONICX_PRIME_35_STREAMLINE_ESSENTIAL','LIFESTYLE_PERSONICX_PRIME_36_URBAN_CAE','LIFESTYLE_PERSONICX_PRIME_37_VIE_TIME','LIFESTYLE_PERSONICX_PRIME_38_BALANCE_CONNECTION','LIFESTYLE_PERSONICX_PRIME_39_CULTURE_CONNECTION','LIFESTYLE_PERSONICX_PRIME_40_PLANVESTING_MOBILITES',
      'LIFESTYLE_PERSONICX_PRIME_41_QUICKPAY_CONVENIENCE','LIFESTYLE_PERSONICX_PRIME_42_MULTIPLE_OUTLET','LIFESTYLE_PERSONICX_PRIME_43_BINESSFLUENTIALS','LIFESTYLE_PERSONICX_PRIME_44_VIBRANTLY_VERDANT','LIFESTYLE_PERSONICX_PRIME_45_INVEST_INDULGE','LIFESTYLE_PERSONICX_PRIME_46_TRENDY_FRUGAL','LIFESTYLE_PERSONICX_PRIME_47_INVEST_NATURE','LIFESTYLE_PERSONICX_PRIME_48_MULTIGAME_MAGNATE','LIFESTYLE_PERSONICX_PRIME_49_ACHIEVE_BALANCE','LIFESTYLE_PERSONICX_PRIME_50_PROFESSIONAL_ASSET',
      'LIFESTYLE_PERSONICX_PRIME_51_INFORM_INTEREST','LIFESTYLE_PERSONICX_PRIME_52_STRATEGIC_EQUILIBRIUM','LIFESTYLE_PERSONICX_PRIME_53_JUGGLE_CONNECTION','LIFESTYLE_PERSONICX_PRIME_54_SPORT_GREEN','LIFESTYLE_PERSONICX_PRIME_55_SMALL_TOWN_SPIRIT','LIFESTYLE_PERSONICX_PRIME_56_CAPTURE_MOMENT','LIFESTYLE_PERSONICX_PRIME_57_HOMETOWN_CHAMP','LIFESTYLE_PERSONICX_PRIME_58_RURAL','LIFESTYLE_PERSONICX_PRIME_59_NURTURE_TRADITION','LIFESTYLE_PERSONICX_PRIME_60_FIELD_GAME',
      'LIFESTYLE_PERSONICX_PRIME_61_PAY','LIFESTYLE_PERSONICX_PRIME_62_TRADITIONAL_VIEWER','LIFESTYLE_PERSONICX_PRIME_63_DELIBERATE_PROVISION','LIFESTYLE_PERSONICX_PRIME_64_REFINE_VIEWPOINT','LIFESTYLE_PERSONICX_PRIME_65_COMMUNITY_INVESTOR','LIFESTYLE_PERSONICX_PRIME_66_LEISURETIME_DESIGN','LIFESTYLE_PERSONICX_PRIME_67_TASTEFUL_COUNTRY','LIFESTYLE_PERSONICX_PRIME_68_OUTDOOR_VERVE','LIFESTYLE_PERSONICX_PRIME_69_FIND_TIME','LIFESTYLE_PERSONICX_PRIME_70_CONSULT_CHOICE',
      'LIFESTYLE_PERSONICX_PRIME_71_DISCERN_CHOICE','LIFESTYLE_PERSONICX_PRIME_72_SENSIBLE_SHOPPER','LIFESTYLE_PERSONICX_PRIME_73_GENERO_HOLDING','LIFESTYLE_PERSONICX_PRIME_74_CULTURE_INVESTMENT','LIFESTYLE_PERSONICX_PRIME_75_POSITIVE_PORTFOLIO','LIFESTYLE_PERSONICX_PRIME_76_ALTRUISTIC_AFFLUENCE','LIFESTYLE_PERSONICX_PRIME_77_GENERO_TRADITION','LIFESTYLE_PERSONICX_PRIME_78_SIMPLE_TRADITION','LIFESTYLE_PERSONICX_PRIME_79_TOUR_TIME','LIFESTYLE_PERSONICX_PRIME_80_COLLECT_CLASSIC',
      'LIFESTYLE_PERSONICX_PRIME_81_ACTIVE_ENLIGHTENMENT','LIFESTYLE_PERSONICX_PRIME_82_CLASSIC_COMFORT','LIFESTYLE_PERSONICX_PRIME_83_NATURAL_AMERICANA','LIFESTYLE_PERSONICX_PRIME_84_INDTRIO_GENEROSITY','LIFESTYLE_PERSONICX_PRIME_85_NEIGHBORHOOD_NEWS','LIFESTYLE_PERSONICX_PRIME_86_ACTIVE_TRAVELER','LIFESTYLE_PERSONICX_PRIME_87_CONVENTIONAL_CHANNEL','LIFESTYLE_PERSONICX_PRIME_88_CONVENTIONALLY_CIVIC','LIFESTYLE_PERSONICX_PRIME_89_COMFORTABLE_CONNECTION','LIFESTYLE_PERSONICX_PRIME_90_FRIEND_FREETIME',
      'LIFESTYLE_PERSONICX_PRIME_91_COLLECTIVE_TRADITION') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_personicx_prime {
    type: string
    sql: substring (${lifestyle_lifestyle_personicx_prime}, 30) ;;
  }

  dimension: lifestyle_lifestyle_personicx_prime_place {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('LIFESTYLE_PERSONICX_PRIME_PLACE_01_PROFESSIONAL_PROSPROPRIETORS','LIFESTYLE_PERSONICX_PRIME_PLACE_02_CONNECT_DIGINOMICS','LIFESTYLE_PERSONICX_PRIME_PLACE_03_ENTRT_AFFLUENCE','LIFESTYLE_PERSONICX_PRIME_PLACE_04_SAVVY_STOCKABILITY','LIFESTYLE_PERSONICX_PRIME_PLACE_05_TENURE_GENERATION','LIFESTYLE_PERSONICX_PRIME_PLACE_06_CHOOSE_OPTION','LIFESTYLE_PERSONICX_PRIME_PLACE_07_METRO_WIRE','LIFESTYLE_PERSONICX_PRIME_PLACE_08_ASCEND_MOBILE','LIFESTYLE_PERSONICX_PRIME_PLACE_09_DIVERGE_DOMICILE','LIFESTYLE_PERSONICX_PRIME_PLACE_10_CAPACIO_CORRELATION','LIFESTYLE_PERSONICX_PRIME_PLACE_11_PRACTICE_PRACTICALITY','LIFESTYLE_PERSONICX_PRIME_PLACE_12_GAIN_MOMENTUM','LIFESTYLE_PERSONICX_PRIME_PLACE_13_CRAFT_SOCIETY','LIFESTYLE_PERSONICX_PRIME_PLACE_14_FAMILY_FURTHERANCE','LIFESTYLE_PERSONICX_PRIME_PLACE_15_HOME_HORIZON','LIFESTYLE_PERSONICX_PRIME_PLACE_16_SEAMLESS_FION','LIFESTYLE_PERSONICX_PRIME_PLACE_17_MOBILE_RISE','LIFESTYLE_PERSONICX_PRIME_PLACE_18_DIGITAL_INROAD','LIFESTYLE_PERSONICX_PRIME_PLACE_19_SCENIC_AMBITION','LIFESTYLE_PERSONICX_PRIME_PLACE_20_MINUTE','LIFESTYLE_PERSONICX_PRIME_PLACE_21_HELLO_HELPER',
      'LIFESTYLE_PERSONICX_PRIME_PLACE_22_SMALL_TOWN_SOLOIST','LIFESTYLE_PERSONICX_PRIME_PLACE_23_COMMENCE_COUNTRY','LIFESTYLE_PERSONICX_PRIME_PLACE_24_METRO_FION','LIFESTYLE_PERSONICX_PRIME_PLACE_25_FLEETING_FREETIME','LIFESTYLE_PERSONICX_PRIME_PLACE_26_LAND_LET','LIFESTYLE_PERSONICX_PRIME_PLACE_27_WATCHFUL_TOKEN','LIFESTYLE_PERSONICX_PRIME_PLACE_28_NEIGHBORHOOD_NETWORK','LIFESTYLE_PERSONICX_PRIME_PLACE_29_COMFORTABLE_PLANNER','LIFESTYLE_PERSONICX_PRIME_PLACE_30_SOUND_RESERVE','LIFESTYLE_PERSONICX_PRIME_PLACE_31_EXTEND_SECURITY','LIFESTYLE_PERSONICX_PRIME_PLACE_32_INHERENT_ASSET','LIFESTYLE_PERSONICX_PRIME_PLACE_33_DUCK_ROW','LIFESTYLE_PERSONICX_PRIME_PLACE_34_SAFE_HAVEN','LIFESTYLE_PERSONICX_PRIME_PLACE_35_SINGULARLY_MIND','LIFESTYLE_PERSONICX_PRIME_PLACE_36_METRO_MAINSTAY','LIFESTYLE_PERSONICX_PRIME_PLACE_37_CITY_FION','LIFESTYLE_PERSONICX_PRIME_PLACE_38_CLASSIC_AMERICANA','LIFESTYLE_PERSONICX_PRIME_PLACE_39_STEADFAST_ABODE','LIFESTYLE_PERSONICX_PRIME_PLACE_40_PARTICIPATE_PARENT','LIFESTYLE_PERSONICX_PRIME_PLACE_41_OUTGOING_DIVERSION','LIFESTYLE_PERSONICX_PRIME_PLACE_42_APPRECIATE_EXCHANGE','LIFESTYLE_PERSONICX_PRIME_PLACE_43_TRANSITION_TENANT',
      'LIFESTYLE_PERSONICX_PRIME_PLACE_44_HANDCRAFT_HAVEN','LIFESTYLE_PERSONICX_PRIME_PLACE_45_BALANCE_PROPRIETOR','LIFESTYLE_PERSONICX_PRIME_PLACE_46_FRUGAL_FAMILHOMES','LIFESTYLE_PERSONICX_PRIME_PLACE_47_MODESOLO_MULTI','LIFESTYLE_PERSONICX_PRIME_PLACE_48_MODEST_MAINLY_METRO','LIFESTYLE_PERSONICX_PRIME_PLACE_49_RENT_RAISE','LIFESTYLE_PERSONICX_PRIME_PLACE_50_DICHOTOMO_LIVE','LIFESTYLE_PERSONICX_PRIME_PLACE_51_NOMINAL_NOMAD','LIFESTYLE_PERSONICX_PRIME_PLACE_52_CITY_SOLENTERS','LIFESTYLE_PERSONICX_PRIME_PLACE_53_RAISINGILY_RENTER','LIFESTYLE_PERSONICX_PRIME_PLACE_54_LET_TOGETGO','LIFESTYLE_PERSONICX_PRIME_PLACE_55_ESTATE_ASSET','LIFESTYLE_PERSONICX_PRIME_PLACE_56_SOLID_REWARD','LIFESTYLE_PERSONICX_PRIME_PLACE_57_COMFORTABLE_RETURN','LIFESTYLE_PERSONICX_PRIME_PLACE_58_EXTEND_ESTATE','LIFESTYLE_PERSONICX_PRIME_PLACE_59_ENDOW_LEGACY','LIFESTYLE_PERSONICX_PRIME_PLACE_60_FAMILY_FOUNDATION','LIFESTYLE_PERSONICX_PRIME_PLACE_61_CITY_SUNSET','LIFESTYLE_PERSONICX_PRIME_PLACE_62_PURSUE_INTEREST','LIFESTYLE_PERSONICX_PRIME_PLACE_63_RURAL_PASTIME','LIFESTYLE_PERSONICX_PRIME_PLACE_64_SINGLY_SOLMETRO','LIFESTYLE_PERSONICX_PRIME_PLACE_65_SUNSETTIREES',
      'LIFESTYLE_PERSONICX_PRIME_PLACE_66_AGE','LIFESTYLE_PERSONICX_PRIME_PLACE_67_GENERO_GENERATION','LIFESTYLE_PERSONICX_PRIME_PLACE_68_MODEST_COMPASSION','LIFESTYLE_PERSONICX_PRIME_PLACE_69_SPECTRUM_FION','LIFESTYLE_PERSONICX_PRIME_PLACE_70_RETIRE_RURAL','LIFESTYLE_PERSONICX_PRIME_PLACE_71_TIMELY_GOLD','LIFESTYLE_PERSONICX_PRIME_PLACE_72_COOPERATIVE_COORDINATION','LIFESTYLE_PERSONICX_PRIME_PLACE_73_COLLABORATIVE_EFFORT','LIFESTYLE_PERSONICX_PRIME_PLACE_74_RELENTLESS_RENTER','LIFESTYLE_PERSONICX_PRIME_PLACE_75_DULO_DICHOTOMY','LIFESTYLE_PERSONICX_PRIME_PLACE_76_GENERO_GENRAISING','LIFESTYLE_PERSONICX_PRIME_PLACE_77_MODEST_PLAN','LIFESTYLE_PERSONICX_PRIME_PLACE_78_MODEST_MATURBANS','LIFESTYLE_PERSONICX_PRIME_PLACE_79_FRUGAL_URBANITES','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_01A_FINANCIALLY_FIT','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_02A_ENRICH_MATURITY','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_03B_SELECTIVE_CONNECTION','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_04B_TIME_HONOR_TRADITIONALIST','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_05C_COMMUNITY_NETWORKER','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_06C_PRACTICAL_OPTION','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_07C_FRUGAL_FION',
      'LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_08C_PLAYFUL_PASTIME','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_09B_SUITABLY_MOBILE','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_10C_DEVOTEDLY_MOBILE','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_11B_RELAX_REJUVENATION','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_12C_TRANSITION_TRAVEL','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_13B_SPORT_COUNTRY','LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_14B_FAMILIAR_HAVEN',
      'LIFESTYLE_PERSONICX_PRIME_PLACE_GRP_15C_CONSCIENTIO_COUNTRY') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: lifestyle_personicx_prime_place {
    type: string
    sql: substring (${lifestyle_lifestyle_personicx_prime_place}, 33) ;;
  }

  dimension: retail_retail_attitude_behavior {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('RETAIL_ATTITUDE_BEHAVIOR_BARGAIN_SHOPPERS','RETAIL_ATTITUDE_BEHAVIOR_DIYERS','RETAIL_ATTITUDE_BEHAVIOR_FASHION_FORWARD',
      'RETAIL_ATTITUDE_BEHAVIOR_FASHIONISTA','RETAIL_ATTITUDE_BEHAVIOR_LUXURY_FASHIONISTA','RETAIL_ATTITUDE_BEHAVIOR_MUSIC','RETAIL_ATTITUDE_BEHAVIOR_MUSIC_DEVICE',
      'RETAIL_ATTITUDE_BEHAVIOR_VALUE_COMFORT') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: retail_attitude_behavior {
    type: string
    sql: substring (${retail_retail_attitude_behavior}, 26) ;;
  }

  dimension: retail_retail_segment {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('RETAIL_SEGMENT_BEEN_THERE_DONE_THAT','RETAIL_SEGMENT_EYE_ON_ESSENTIALS','RETAIL_SEGMENT_FULL_SPEND_AHEAD','RETAIL_SEGMENT_ITS_MY_LIFE',
      'RETAIL_SEGMENT_PROTECTING_THE_DREAM','RETAIL_SEGMENT_RELUCTANT_RESPONSE','RETAIL_SEGMENT_SAVVY_SPENDERS','RETAIL_SEGMENT_SQUEAKING_BY',
      'RETAIL_SEGMENT_TIGHT_WITH_PURPOSE') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: retail_segment {
    type: string
    sql: substring (${retail_retail_segment}, 16) ;;
  }

  dimension: tech_tech_social_media {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('TECH_SOCIAL_MEDIA_BUSINESS','TECH_SOCIAL_MEDIA_FACEBOOK_USER','TECH_SOCIAL_MEDIA_LINKEDIN_USER','TECH_SOCIAL_MEDIA_MOBILE_SOCIAL_NETWORKER',
      'TECH_SOCIAL_MEDIA_PHOTO_POSTER','TECH_SOCIAL_MEDIA_POST_RESPONDER','TECH_SOCIAL_MEDIA_SOCIAL_INFLUENCER','TECH_SOCIAL_MEDIA_SOCIALLY_INFLUENCED',
      'TECH_SOCIAL_MEDIA_TEXT_POSTER','TECH_SOCIAL_MEDIA_TWITTER_USER','TECH_SOCIAL_MEDIA_VIDEO_POSTER',
      'TECH_SOCIAL_MEDIA_YOUTUBE_USER') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: tech_social_media {
    type: string
    sql: substring (${tech_tech_social_media}, 19) ;;
  }

  dimension: tech_tech_technographic_sement {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('TECH_TECHNOGRAPHIC_SEGMENT_DIGITAL_HOMEFULS','TECH_TECHNOGRAPHIC_SEGMENT_FAST_FORWARD','TECH_TECHNOGRAPHIC_SEGMENT_GADGET_GRABBERS','TECH_TECHNOGRAPHIC_SEGMENT_HANDSHAKERS',
      'TECH_TECHNOGRAPHIC_SEGMENT_MEDI_JUNKIES','TECH_TECHNOGRAPHIC_SEGMENT_MOUSE_POTATOES','TECH_TECHNOGRAPHIC_SEGMENT_NEW_AGE_NURTURERS','TECH_TECHNOGRAPHIC_SEGMENT_SIDELINED_CITIZENS','TECH_TECHNOGRAPHIC_SEGMENT_TECHNO_STRIVERS',
      'TECH_TECHNOGRAPHIC_SEGMENT_TRADITIONALISTS') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: tech_technographic_sement {
    type: string
    sql: substring (${tech_tech_technographic_sement}, 28) ;;
  }

  dimension: travel_travel_activity {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('TRAVEL_ACTIVITY_AMUSEMENT_PARKS','TRAVEL_ACTIVITY_BEACH_WATERFRONT','TRAVEL_ACTIVITY_BIKING','TRAVEL_ACTIVITY_BOATING','TRAVEL_ACTIVITY_CAMPING','TRAVEL_ACTIVITY_CASINO','TRAVEL_ACTIVITY_CRUISE',
      'TRAVEL_ACTIVITY_CULINARY','TRAVEL_ACTIVITY_ECO_TRAVEL','TRAVEL_ACTIVITY_FISHING','TRAVEL_ACTIVITY_GOLFING','TRAVEL_ACTIVITY_HISTORIC','TRAVEL_ACTIVITY_HUNTING','TRAVEL_ACTIVITY_LEISURE','TRAVEL_ACTIVITY_MUSEUMS',
      'TRAVEL_ACTIVITY_NIGHTLIFE','TRAVEL_ACTIVITY_PARKS','TRAVEL_ACTIVITY_RV','TRAVEL_ACTIVITY_SHOPPING','TRAVEL_ACTIVITY_SPA','TRAVEL_ACTIVITY_SPORTS','TRAVEL_ACTIVITY_TENNIS','TRAVEL_ACTIVITY_TOURING_SIGHTSEEING',
      'TRAVEL_ACTIVITY_US','TRAVEL_ACTIVITY_VOLUNTEER','TRAVEL_ACTIVITY_WATER_SPORTS','TRAVEL_ACTIVITY_WILDLIFE_VIEWING','TRAVEL_ACTIVITY_WINERY_BREWERY','TRAVEL_ACTIVITY_WINTER_SPORTS',
      'TRAVEL_ACTIVITY_ZOO') THEN  ${statement}
      ELSE NULL END;;
  }



  dimension: travel_activity {
    type: string
    sql: substring (${travel_travel_activity}, 17) ;;
  }

  dimension: travel_travel_attitude_behavior {
    hidden: yes
    type: string
    sql: CASE WHEN ${statement} IN ('TRAVEL_ATTITUDE_BEHAVIOR_AFFLUENT_TRAVELER','TRAVEL_ATTITUDE_BEHAVIOR_CONCERT_GOERS','TRAVEL_ATTITUDE_BEHAVIOR_FAMILY_TRAVELERS',
      'TRAVEL_ATTITUDE_BEHAVIOR_MOTORCYCLE_TOURISTS','TRAVEL_ATTITUDE_BEHAVIOR_SNOW_SKI_VACATIONER') THEN  ${statement}
      ELSE NULL END;;
  }

  dimension: travel_attitude_behavior {
    type: string
    sql: substring (${travel_travel_attitude_behavior}, 26) ;;
  }

  measure: target_percentage {
    type: sum
    sql: ${target_percent} ;;
    value_format_name: percent_1
    # html: <p></p> ;;
  }

  measure: genpop_percentage {
    type: sum
    sql: ${genpop_percent} ;;
    value_format_name: percent_1
    # html: <p></p> ;;
  }

  measure: index {
    type: sum
    sql: ${target_index} ;;
    value_format: "0"
    # html: <p></p> ;;
  }

  measure: genpop_cnt_calc {
    type: sum
    sql: ${genpop_cnt} ;;
    description: "Used to calculate genpop percentage"
  }


  measure: count {
    type: count
    drill_fields: []
  }

  dimension: link_filter_workaround {
    hidden: yes
    sql: case when ${client}='JBL' then 'JBL%20Info.docx?d=w2c8f35348664439990e8cc547497abbc&csf=1&web=1&e=EZG2Rg'
              when ${client}='CCL' then 'CCL%20Info.docx?d=w84014161a74f4fe890ed77eb180f944f&csf=1&web=1&e=3fMK1l'
              when ${client}='Nike' then 'Nike%20Info.docx?d=w1f18d33179134114a75bba0c808fd001&csf=1&web=1&e=dkPrUM'
              end;;
    description: "dimension created to define the links depending on the client/audience"
  }

  dimension: link_info {
      type: string
      sql: ${link_filter_workaround};;
      html: <a href="https://interpublic.sharepoint.com/:w:/r/sites/TestLooker/Infobase%20Documents/{{value}}"><font size="5"> Click here to see the info on the Audience </font></a>;;
      description: "dimension that is shown on the dashboard, its value changes with the change of Client (it can also be set to change based on the audience, if one client has several audiences)"
    }



  # dimension: name {
  #   sql: _user_attributes['agency'] ;;
  # }
  # dimension: logos {
  #   type: string
  #   sql: ${name} ;;
  #   html:
  #         {% if name == "Initiative" %}
  #         &lt;img src="https://d1jfzm9ywrnbsn.cloudfront.net/logo.png" height="170" width="255"&gt;
  #         {% elsif name == "UM" %}
  #         &lt;img src="https://th.bing.com/th/id/R.ad92044dcc2ab081e4f09e6a8411dfaa?rik=Q2%2brxYZHMP3YrQ&pid=ImgRaw&r=0" height="170" width="255"&gt;
  #         {% else %}
  #         &lt;img src="https://mediaserver.responsesource.com/press-release/84285/dev_logo_rgb_1200dpi.jpg" height="170" width="170"&gt;
  #         {% endif %} ;;
  # }

  # dimension: logo {
  # sql: _user_attributes['agency'] ;;
  # html: <img src="https://d1jfzm9ywrnbsn.cloudfront.net/logo.{{ value }}.png" /> ;;
# }
  }
