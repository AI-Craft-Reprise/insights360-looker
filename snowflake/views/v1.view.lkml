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

#   dimension: tv_channels {
#     type: string
#     sql: CASE WHEN ${question_level_3} = 'TELEVISION CHANNELS OR NETWORKS' THEN ${answer}

#               ELSE NULL END ;;
#     suggestions: ["#HEROES & ICONS", "#NEWSMAX TV", "A&E", "ABC", "ADULT SWIM", "AMC", "AMERICAN HEROES CHANNEL",
#                   "ANIMAL PLANET", "ASPIRE", "AXS TV", "AZTECA", "BABYFIRST", "BBC AMERICA", "BBC WORLD NEWS",
#                   "BEIN SPORTS", "BEIN SPORTS EN ESPAÃ±OL", "BET (BLACK ENTERTAINMENT TV)",
# 18  BET HER
# 19  BLOOMBERG TELEVISION
# 20  BOUNCE
# 21  BRAVO
# 22  CARTOON NETWORK
# 23  CBS
# 24  CBS SPORTS NETWORK
# 25  CMT (COUNTRY MUSIC TELEVISION)
# 26  CNBC
# 27  CNN
# 28  CNN EN ESPAÃ±OL
# 29  COMEDY CENTRAL
# 30  COMET
# 31  COOKING CHANNEL
# 32  COZI TV
# 33  CW
# 34  DESTINATION AMERICA
# 35  DISCOVERY CHANNEL
# 36  DISCOVERY EN ESPAÃ±OL
# 37  DISCOVERY FAMILY
# 38  DISCOVERY LIFE CHANNEL
# 39  DISNEY CHANNEL
# 40  DISNEY JUNIOR
# 41  DISNEY XD
# 42  DIY NETWORK
# 43  E! (ENTERTAINMENT TELEVISION)
# 44  ESPN
# 45  ESPN SEC
# 46  ESPN2
# 47  ESPNEWS
# 48  ESPNU
# 49  ESTRELLA TV
# 50  FLIX
# 51  FM
# 52  FOOD NETWORK
# 53  FOX
# 54  FOX BUSINESS NETWORK
# 55  FOX DEPORTES
# 56  FOX NEWS CHANNEL
# 57  FOX SPORTS 1
# 58  FOX SPORTS 2
# 59  FREEFORM
# 60  FUSE
# 61  FX
# 62  FXM (FX MOVIE CHANNEL)
# 63  FXX
# 64  FYI
# 65  GAC (GREAT AMERICAN COUNTRY)
# 66  GALAVISION
# 67  GOLF CHANNEL
# 68  GSN (GAME SHOW NETWORK)
# 69  HALLMARK CHANNEL
# 70  HALLMARK DRAMA
# 71  HALLMARK MOVIES & MYSTERIES
# 72  HGTV (HOME & GARDEN TELEVISION)
# 73  HISTORY CHANNEL
# 74  HLN
# 75  HSN (HOME SHOPPING NETWORK)
# 76  IFC TV
# 77  INSP
# 78  INVESTIGATION DISCOVERY
# 79  ION
# 80  LAFF
# 81  LIFETIME
# 82  LMN [MEASURED AS LIFETIME MOVIES IN WAVE 83]
# 83  LOGO
# 84  MAVTV
# 85  METV
# 86  MLB NETWORK
# 87  MOTOR TREND NETWORK
# 88  MSNBC
# 89  MTV (MUSIC TELEVISION)
# 90  MTV CLASSIC
# 91  MTV LIVE
# 92  MTV2
# 93  MUSIC CHOICE
# 94  NAT GEO WILD
# 95  NATIONAL GEOGRAPHIC CHANNEL
# 96  NBA TV
# 97  NBC
# 98  NBC SPORTS NETWORK
# 99  NEWSNATION [MEASURED AS WGN AMERICA IN WAVES 83 AND 84]
# 100 NFL NETWORK
# 101 NHL NETWORK
# 102 NICK AT NITE
# 103 NICK JR.
# 104 NICKELODEON
# 105 OUTDOOR CHANNEL
# 106 OVATION TV
# 107 OWN (OPRAH WINFREY NETWORK)
# 108 OXYGEN
# 109 PARAMOUNT NETWORK
# 110 PBS
# 111 PBS KIDS
# 112 POP
# 113 QVC
# 114 REELZ CHANNEL
# 115 RFD-TV (RURAL FREE DELIVERY TV)
# 116 SCI
# 117 SMITHSONIAN CHANNEL
# 118 SPORTSMAN CHANNEL
# 119 SUNDANCETV
# 120 SYFY
# 121 TBS
# 122 TCM (TURNER CLASSIC MOVIES)
# 123 TEENNICK
# 124 TELEMUNDO
# 125 TENNIS CHANNEL
# 126 THE WEATHER CHANNEL
# 127 TLC
# 128 TNT
# 129 TRAVEL CHANNEL
# 130 TRUTV
# 131 TUDN [MEASURED AS UNIVISION DEPORTES NETWORK (UDN) IN WAVE 83]
# 132 TV LAND
# 133 TV LAND CLASSIC
# 134 TV ONE
# 135 UNIMAS
# 136 UNIVERSAL KIDS
# 137 UNIVERSO
# 138 UNIVISION
# 139 UP TV
# 140 USA NETWORK
# 141 VH1
# 142 VICE TV [MEASURED AS VICELAND IN WAVE 83]
# 143 WE TV










}
