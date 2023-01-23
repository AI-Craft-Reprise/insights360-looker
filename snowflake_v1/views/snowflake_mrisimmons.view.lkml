view: snowflake_mrisimmons {
  sql_table_name: "airbyte-@{env}-snowflake-glue-ctg-db".snowflake_mrisimmons
    ;;


  dimension: question_level_1 {
    type: string
    sql: ${TABLE}.question_level_1 ;;
  }

  dimension: question_level_2 {
    type: string
    sql: ${TABLE}.question_level_2 ;;
  }

  dimension: question_level_3 {
    type: string
    sql: ${TABLE}.question_level_3 ;;
  }

  dimension: question_level_4 {
    type: string
    sql: ${TABLE}.question_level_4 ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: question_answer_concat {
    type: string
    sql: ${TABLE}.question_answer_concat ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: genpop_count {
    type: number
    sql: ${TABLE}.genpop_count ;;
  }

  dimension: genpop_total {
    type: number
    sql: ${TABLE}.genpop_total ;;
  }

  dimension: target_count {
    type: number
    sql: ${TABLE}.target_count ;;
  }

  dimension: target_total {
    type: number
    sql: ${TABLE}.target_total ;;
  }

  dimension: genpop_percent {
    type: number
    sql: ${TABLE}.genpop_percent ;;
  }

  dimension: target_percent {
    type: number
    sql: ${TABLE}.target_percent ;;
  }

  dimension: overall_index {
    type: number
    sql: ${TABLE}.overall_index ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: infobase_version {
    type: string
    sql: ${TABLE}.infobase_version ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: audience_size {
    type: string
    sql: ${TABLE}.audience_size ;;
  }

  measure: target {
    type: sum
    sql: ${target_count};;
  }

  measure: target_percentage {
    type: sum
    sql: ${target_percent};;
    value_format_name: percent_1
  }

  measure: target_v2 {
    type: count_distinct
    sql: ${keyword};;
  }

  measure:total_target {
    type: sum
    sql: ${target_total};;
  }

  # measure: target_percent_value {
  #   type: number
  #   sql: ${target}/NULLIF(${total_target},0) ;;
  #   value_format_name: percent_1
  # }

  measure: index  {
    type: sum
    sql: ${overall_index} ;;
    value_format: "0"
  }

  measure: index_value  {
    hidden: yes
    type: sum
    sql: 100-${overall_index} ;;
    value_format: "0"
  }

  measure: index_overall {
    type: sum
    sql: ${overall_index} ;;
    value_format: "0"
    html: {{ answer._rendered_value }} || {{ rendered_value }} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: media {
    type: string
    sql: CASE WHEN ${question_level_1} IN ('MEDIA', 'Media') THEN ${question_level_2}

              ELSE NULL END ;;
  }

  dimension: media_internet_websites_apps {
    type: string
    sql: CASE WHEN ${question_level_3} IN ('WEBSITES VISITED OR APPS USED IN THE LAST 30 DAYS','Websites Visited Or Apps Used In The Last 30 Days') THEN ${question_level_4}

              ELSE NULL END ;;
  }

  dimension: social_media {
    type: string
    sql: CASE WHEN ${question_level_3} IN ('SOCIAL MEDIA, PHOTO OR VIDEO-SHARING SERVICES VISITED OR USED IN THE LAST 30 DAYS'
                                            , 'Social Media, Photo Or Video-Sharing Services Visited Or Used In The Last 30 Days') THEN ${question_level_4}

              ELSE NULL END ;;
  }

  dimension: psychographics {
    type: string
    sql: CASE WHEN ${question_level_1} IN ('PSYCHOGRAPHICS', 'Psychographics') THEN ${question_level_2}

                    ELSE NULL END ;;
  }

  dimension: psychographics_aboutme{
    label: "About Me"
    type: string
    sql: CASE WHEN ${question_level_2} IN ('GENERAL ATTITUDES','GENERAL ATTITUDES [HISPANIC/LATINO RESPONDENTS ONLY]',
                    'SELF-CONCEPTS','YOUR ATTITUDES', 'General Attitudes', 'General Attitudes [Hispanic/Latino Respondents Only]',
                    'Self-Concepts', 'Your attitudes')
                    THEN ${question_level_2}

                          ELSE NULL END ;;
    # suggestions: ["GENERAL ATTITUDES", "GENERAL ATTITUDES [HISPANIC/LATINO RESPONDENTS ONLY]", "SELF-CONCEPTS", "YOUR ATTITUDES"]
  }

  dimension: psychographics_shoppingandstyle{
    label: "Shopping & Style"
    type: string
    sql: CASE WHEN ${question_level_2} IN ('BUYING STYLES','FASHION & STYLE ATTITUDES','SHOPPING ATTITUDES',
                    'Buying Styles', 'Fashion & Style Attitudes', 'Shopping Attitudes')
                    THEN ${question_level_2}

                          ELSE NULL END ;;
    # suggestions: ["BUYING STYLES", "FASHION & STYLE ATTITUDES", "SHOPPING ATTITUDES"]
  }

  dimension: psychographics_foodandhealth{
    label: "Food & Health"
    type: string
    sql: CASE WHEN ${question_level_2} IN ('FOOD ATTITUDES','HEALTH ATTITUDES', 'Food Attitudes', 'Health Attitudes')
                    THEN ${question_level_2}

                          ELSE NULL END ;;
    # suggestions: ["FOOD ATTITUDES", "HEALTH ATTITUDES"]
  }

  dimension: psychographics_travelandmoney{
    label: "Travel & Money"
    type: string
    sql: CASE WHEN ${question_level_2} IN ('AUTOMOTIVE ATTITUDES','FINANCE ATTITUDES', 'VACATION TRAVEL ATTITUDES',
                    'Automotive Attitudes', 'Finance Attitudes', 'Vacation Travel Attitudes')
                    THEN ${question_level_2}

                          ELSE NULL END ;;
    # suggestions: ["AUTOMOTIVE ATTITUDES", "FINANCE ATTITUDES", "VACATION TRAVEL ATTITUDES"]
  }

  dimension: psychographics_media{
    label: "Psychographics Media"
    type: string
    sql: CASE WHEN ${question_level_2} IN ('ATTITUDES TOWARD ADVERTISING','CELLULAR / MOBILE OPINIONS', 'MORE TV WATCHING',
                      'SOCIAL MEDIA ATTITUDES', 'TECHNOLOGY ATTITUDES', 'Attitudes Towards Advertising', 'Cellular / Mobile Opinions',
                      'More Tc Watching', 'Social Media attitudes', 'Technology Attitudes')
                    THEN ${question_level_2}

                          ELSE NULL END ;;
    # suggestions: ["ATTITUDES TOWARD ADVERTISING", "CELLULAR / MOBILE OPINIONS", "MORE TV WATCHING", "SOCIAL MEDIA ATTITUDES", "TECHNOLOGY ATTITUDES"]
  }


  dimension: summaries_grouped {
    type: string
    sql: CASE WHEN ${answer} IN ('INTERNET I (HEAVY)', 'Internet I (Heavy)', 'INTERNET II', 'Internet Ii', 'INTERNET III', 'Internet Iii', 'INTERNET IV', 'Internet Iv', 'INTERNET V (LIGHT)', 'Internet V (Light)',
      'SOCIAL MEDIA I (HEAVY)', 'Social Media I (Heavy)', 'SOCIAL MEDIA II', 'Social Media Ii', 'SOCIAL MEDIA III', 'Social Media Iii', 'SOCIAL MEDIA IV', 'Social Media Iv', 'SOCIAL MEDIA V (LIGHT)', 'Social Media V (Light)',
      'TV (DAY TIME) I (HEAVY)', 'Tv (Day Time) I (Heavy)', 'TV (DAY TIME) II', 'Tv (Day Time) Ii', 'TV (DAY TIME) III (LIGHT)', 'Tv (Day Time) Iii (Light)', 'TV (PRIME TIME) I (HEAVY)', 'Tv (Prime Time) I (Heavy)',
      'TV (PRIME TIME) II', 'Tv (Prime Time) Ii', 'TV (PRIME TIME) III', 'Tv (Prime Time) Iii', 'TV (PRIME TIME) IV','Tv (Prime Time) Iv', 'TV (PRIME TIME) V (LIGHT)', 'Tv (Prime Time) V (Light)',
      'TV (TOTAL) I (HEAVY)', 'Tv (Total) I (Heavy)', 'TV (TOTAL) II', 'Tv (Total) Ii', 'TV (TOTAL) III', 'Tv (Total) Iii', 'TV (TOTAL) IV', 'Tv (Total) Iv', 'TV (TOTAL) V (LIGHT)', 'Tv (Total) I (Light)')
      THEN 'Internet, Social, TV' ELSE 'Outdoor, Radio/Audio, Newspapers, Magazines' END;;
    suggestions: ["Internet, Social, TV", "Outdoor, Radio/Audio, Newspapers, Magazines"]
  }

  dimension: media_summaries{
    type: string
    sql: CASE WHEN ${question_level_3} IN ('MEDIA QUINTILE/TERCILE CODES', 'Media Quintile/Tercile Codes') THEN ${question_level_4}

                    ELSE NULL END ;;

  }

}
