view: v1 {
  sql_table_name: snowflake_extractions.v1 ;;
  suggestions: no

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: genpop_count {
    type: number
    sql: ${TABLE}.genpop_count ;;
  }

  dimension: genpop_percent {
    type: number
    sql: ${TABLE}.genpop_percent ;;
    value_format: "0.0%"
  }

  dimension: genpop_total {
    type: number
    sql: ${TABLE}.genpop_total ;;
  }

  dimension: infobase_version {
    type: string
    sql: ${TABLE}.infobase_version ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
    primary_key: yes
  }

  dimension: overall_index {
    type: number
    sql: ${TABLE}.overall_index ;;
  }

  dimension: question_answer_concat {
    type: string
    sql: ${TABLE}.question_answer_concat ;;
  }

  dimension: question_level_1 {
    type: string
    sql: ${TABLE}.question_level_1 ;;
    suggestions: ["PSYCHOGRAPHICS","ELECTRONICS","HOME","PERSONAL ITEMS","AUTOMOTIVE","AUTOMOTIVE AFTERMARKET",
      "DEMOGRAPHICS","TOBACCO","FINANCIAL","HOUSEHOLD PRODUCTS","PERSONAL CARE",
      "POLITICAL OUTLOOK/AFFILIATION & VOTING","TRUCKS/ATV/MOTORCYCLES","APPAREL/ACCESSORIES",
      "AUTOMOTIVE MISCELLANEOUS","CANDY/SWEETS/SNACKS","HEALTH & BEAUTY AIDS","MEDIA","SHOPPING",
      "BEVERAGES","INSURANCE","LEISURE/SPORTS","TRAVEL"]
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

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}."table" ;;
  }

  dimension: target_count {
    type: number
    sql: ${TABLE}.target_count ;;
  }

  dimension: target_percent {
    type: number
    sql: ${TABLE}.target_percent;;
    value_format: "0.0%"
  }

  dimension: target_total {
    type: number
    sql: ${TABLE}.target_total ;;
  }

  measure: gen_pop_total {
    type: max
    sql: ${genpop_total} ;;
  }

  # measure: target_percent_value {
  #   type: sum
  #   sql: ${target_percent} ;;
  #   value_format: "0.0%"
  # }

  # measure: genpop_percent_value {
  #   type: sum
  #   sql: ${genpop_percent} ;;
  #   value_format: "0.0%"
  # }

  measure: target {
    type: sum
    sql: ${target_count};;
  }

  measure: target_v2 {
    type: count_distinct
    sql: ${keyword};;
  }

  measure:total_target {
    type: sum
    sql: ${target_total};;
  }

  measure: target_percentage {
    type: number
    sql: ${target}/NULLIF(${total_target},0) ;;
    value_format_name: percent_2
  }

  measure: index  {
    type: sum
    sql: ${overall_index} ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
    drill_fields: [audience_name,keyword]
  }

  dimension: media {
    type: string
    sql: CASE WHEN ${question_level_1} = 'MEDIA' THEN ${question_level_2}

        ELSE NULL END ;;
    suggestions: ["CABLE", "DIGITAL PLACE-BASED/ALTERNATIVE ADVERTISING", "INTERNET", "MAGAZINE", "NEWSPAPER",
                  "RADIO/AUDIO", "SUMMARIES", "TELEVISION", "YELLOW PAGES"]
  }

  dimension: media_internet_websites_apps {
    type: string
    sql: CASE WHEN ${question_level_3} = 'WEBSITES VISITED OR APPS USED IN THE LAST 30 DAYS' THEN ${question_level_4}

        ELSE NULL END ;;
    suggestions: ["EMAIL", "ENTERTAINMENT", "FINANCE", "GAMES/GAMING", "HEALTH", "INFORMATION/REFERENCE", "JOBS/CAREERS", "NEWS/COMMENTARY",
                  "SHOPPING", "SOCIALIZING/DATING", "SPANISH LANGUAGE", "SPORTS", "TECHNOLOGY", "TRAVEL/MAPS", "WEATHER"]
  }

  dimension: social_media {
    type: string
    sql: CASE WHEN ${question_level_3} = 'SOCIAL MEDIA, PHOTO OR VIDEO-SHARING SERVICES VISITED OR USED IN THE LAST 30 DAYS' THEN ${question_level_4}

        ELSE NULL END ;;
    suggestions: ["ANY SOCIAL MEDIA/PHOTO/VIDEO-SHARING SERVICES", "FACEBOOK", "FLICKR", "GOOGLE PHOTOS", "INSTAGRAM", "LINKEDIN",
                  "PINTEREST", "REDDIT", "SHUTTERFLY", "SNAPCHAT", "TIKTOK", "TUMBLR", "TWITCH", "TWITTER", "VIMEO", "YELP", "YOUTUBE"]
  }










}
