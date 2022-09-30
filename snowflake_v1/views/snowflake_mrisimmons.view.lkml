view: snowflake_mrisimmons {
  sql_table_name: "airbyte-dev-snowflake-glue-ctg-db".snowflake_mrisimmons
    ;;
  suggestions: no

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

  dimension: question_level_1 {
    type: string
    sql: ${_airbyte_data}.question_level_1 ;;
    suggestions: ["PSYCHOGRAPHICS","ELECTRONICS","HOME","PERSONAL ITEMS","AUTOMOTIVE","AUTOMOTIVE AFTERMARKET",
      "DEMOGRAPHICS","TOBACCO","FINANCIAL","HOUSEHOLD PRODUCTS","PERSONAL CARE",
      "POLITICAL OUTLOOK/AFFILIATION & VOTING","TRUCKS/ATV/MOTORCYCLES","APPAREL/ACCESSORIES",
      "AUTOMOTIVE MISCELLANEOUS","CANDY/SWEETS/SNACKS","HEALTH & BEAUTY AIDS","MEDIA","SHOPPING",
      "BEVERAGES","INSURANCE","LEISURE/SPORTS","TRAVEL"]
  }

  dimension: question_level_2 {
    type: string
    sql: ${_airbyte_data}.question_level_2 ;;
  }

  dimension: question_level_3 {
    type: string
    sql: ${_airbyte_data}.question_level_3 ;;
  }

  dimension: question_level_4 {
    type: string
    sql: ${_airbyte_data}.question_level_4 ;;
  }

  dimension: answer {
    type: string
    sql: ${_airbyte_data}.answer ;;
  }

  dimension: question_answer_concat {
    type: string
    sql: ${_airbyte_data}.question_answer_concat ;;
  }

  dimension: keyword {
    type: string
    sql: ${_airbyte_data}.keyword ;;
  }

  dimension: genpop_count {
    type: number
    sql: ${_airbyte_data}.genpop_count ;;
  }

  dimension: genpop_total {
    type: number
    sql: ${_airbyte_data}.genpop_total ;;
  }

  dimension: target_count {
    type: number
    sql: ${_airbyte_data}.target_count ;;
  }

  dimension: target_total {
    type: number
    sql: ${_airbyte_data}.target_total ;;
  }

  dimension: genpop_percent {
    type: number
    sql: ${_airbyte_data}.genpop_percent ;;
  }

  dimension: target_percent {
    type: number
    sql: ${_airbyte_data}.target_percent ;;
  }

  dimension: overall_index {
    type: number
    sql: ${_airbyte_data}.overall_index ;;
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
    suggestions: ["Guy.Fieri.Foodies.and.Indulgers", "Statement.Seekers.18.24", "Brand.Competitors"]
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
    type: date
    sql: ${_airbyte_data}._ab_source_file_last_modified ;;
  }

  dimension: _ab_source_file_url {
    type: string
    sql: ${_airbyte_data}._ab_source_file_url ;;
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

  dimension: psychographics {
    type: string
    sql: CASE WHEN ${question_level_1} = 'PSYCHOGRAPHICS' THEN ${question_level_2}

                    ELSE NULL END ;;
    suggestions: ["ATTITUDES TOWARD ADVERTISING", "AUTOMOTIVE ATTITUDES", "BUYING STYLES", "CATEGORY INFLUENTIALSSM SEGMENTS*",
      "CATEGORY INFLUENTIALSSM SEGMENTS*- CATEGORIES RECOMMENDED TO PEOPLE", "CATEGORY INFLUENTIALSSM SEGMENTS*- PEOPLE YOU HAVE RECOMMENDED ANY PRODUCT OR SERVICE",
      "CELLULAR / MOBILE OPINIONS", "CHOOSING MOBILE PHONES & PROVIDERS", "CONSUMER CONFIDENCE", "FASHION & STYLE ATTITUDES",
      "FINANCE ATTITUDES", "FOOD ATTITUDES", "GENERAL ATTITUDES", "GENERAL ATTITUDES [HISPANIC/LATINO RESPONDENTS ONLY]", "GFK ROPER VALUES ACTIVITIES",
      "GFK ROPER VALUES SOURCE QUESTIONS", "HEALTH ATTITUDES", "INTEREST IN ADVERTISING", "INTEREST IN SPORTS", "INTEREST IN SPORTS - SUMMARY",
      "INTEREST IN SPORTS - SUMMARY CODES", "LANGUAGE PREFERRED (HISPANIC/LATINO RESPONDENTS ONLY)", "MAKE/MODEL OF NEW CAR/TRUCK, IF MAKING DECISION TODAY",
      "MEDIA ATTITUDES", "MEDIA TRUSTED THE MOST", "MORE TV WATCHING", "NEW CAR/TRUCK, IF MAKING DECISION TODAY (MAKE ONLY)",
      "PUBLIC ACTIVITIES IN LAST 12 MONTHS", "SELF-CONCEPTS", "SHOPPING ATTITUDES", "SOCIAL MEDIA", "SOCIAL MEDIA ATTITUDES", "SPORTS INTEREST",
      "TECHNOLOGY ATTITUDES", "VACATION TRAVEL ATTITUDES", "WATCHING TV", "YOUR ATTITUDES", "YOUR INTENTIONS"]
  }

  dimension: summaries_grouped {
    type: string
    sql: CASE WHEN ${answer} IN ('INTERNET I (HEAVY)', 'INTERNET II', 'INTERNET III', 'INTERNET IV', 'INTERNET V (LIGHT)',
      'SOCIAL MEDIA I (HEAVY)', 'SOCIAL MEDIA II', 'SOCIAL MEDIA III', 'SOCIAL MEDIA IV','SOCIAL MEDIA V (LIGHT)',
      'TV (DAY TIME) I (HEAVY)', 'TV (DAY TIME) II', 'TV (DAY TIME) III (LIGHT)', 'TV (PRIME TIME) I (HEAVY)',
      'TV (PRIME TIME) II', 'TV (PRIME TIME) III', 'TV (PRIME TIME) IV', 'TV (PRIME TIME) V (LIGHT)',
      'TV (TOTAL) I (HEAVY)', 'TV (TOTAL) II', 'TV (TOTAL) III', 'TV (TOTAL) IV', 'TV (TOTAL) V (LIGHT)')
      THEN 'Internet, Social, TV' ELSE 'Outdoor, Radio/Audio, Newspapers, Magazines' END;;
    suggestions: ["Internet, Social, TV", "Outdoor, Radio/Audio, Newspapers, Magazines"]
  }

  dimension: media_summaries{
    type: string
    sql: CASE WHEN ${question_level_3} = 'MEDIA QUINTILE/TERCILE CODES' THEN ${question_level_4}

                    ELSE NULL END ;;
    suggestions: ["INTERNET I (HEAVY)", "INTERNET II", "INTERNET III", "INTERNET IV", "INTERNET V (LIGHT)", "MAGAZINES I (HEAVY)",
      "MAGAZINES II", "MAGAZINES III", "MAGAZINES IV", "MAGAZINES V (LIGHT)", "NEWSPAPER I (HEAVY)", "NEWSPAPER II", "NEWSPAPER III",
      "NEWSPAPER IV", "NEWSPAPER V (LIGHT)", "OUTDOOR I (HEAVY)", "OUTDOOR II", "OUTDOOR III", "OUTDOOR IV", "OUTDOOR V (LIGHT)",
      "RADIO/AUDIO (PRIMETIME) I (HEAVY)", "RADIO/AUDIO (PRIMETIME) II", "RADIO/AUDIO (PRIMETIME) III", "RADIO/AUDIO (PRIMETIME) IV",
      "RADIO/AUDIO (PRIMETIME) V (LIGHT)", "RADIO/AUDIO (WEEKDAYS) I (HEAVY)", "RADIO/AUDIO (WEEKDAYS) II", "RADIO/AUDIO (WEEKDAYS) III",
      "RADIO/AUDIO (WEEKDAYS) IV", "RADIO/AUDIO (WEEKDAYS) V (LIGHT)", "SOCIAL MEDIA I (HEAVY)", "SOCIAL MEDIA II", "SOCIAL MEDIA III",
      "SOCIAL MEDIA IV", "SOCIAL MEDIA V (LIGHT)", "TV (DAY TIME) I (HEAVY)", "TV (DAY TIME) II", "TV (DAY TIME) III (LIGHT)",
      "TV (PRIME TIME) I (HEAVY)", "TV (PRIME TIME) II", "TV (PRIME TIME) III", "TV (PRIME TIME) IV", "TV (PRIME TIME) V (LIGHT)",
      "TV (TOTAL) I (HEAVY)", "TV (TOTAL) II", "TV (TOTAL) III", "TV (TOTAL) IV", "TV (TOTAL) V (LIGHT)"]
  }
}
