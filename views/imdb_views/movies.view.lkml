# The name of this view in Looker is "Movies"
view: movies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.movies`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actors" in Explore.

  dimension: actors {
    type: string
    sql: ${TABLE}.Actors ;;
  }

  dimension: awards_nominated_for {
    type: number
    sql: ${TABLE}.Awards_Nominated_For ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_awards_nominated_for {
    type: sum
    sql: ${awards_nominated_for} ;;
  }

  measure: average_awards_nominated_for {
    type: average
    sql: ${awards_nominated_for} ;;
  }

  dimension: awards_received {
    type: number
    sql: ${TABLE}.Awards_Received ;;
  }

  dimension: boxoffice {
    type: number
    sql: ${TABLE}.Boxoffice ;;
  }

  dimension: country_availability {
    type: string
    sql: ${TABLE}.Country_Availability ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}.Genre ;;
  }

  dimension: hidden_gem_score {
    type: number
    sql: ${TABLE}.Hidden_Gem_Score ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.Image ;;
  }

  dimension: imdb_link {
    type: string
    sql: ${TABLE}.IMDb_Link ;;
  }

  dimension: imdb_score {
    type: number
    sql: ${TABLE}.IMDb_Score ;;
  }

  dimension: imdb_votes {
    type: number
    sql: ${TABLE}.IMDb_Votes ;;
  }

  dimension: languages {
    type: string
    sql: ${TABLE}.Languages ;;
  }

  dimension: metacritic_score {
    type: number
    sql: ${TABLE}.Metacritic_Score ;;
  }

  dimension: netflix_link {
    type: string
    sql: ${TABLE}.Netflix_Link ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: netflix_release {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Netflix_Release_Date ;;
  }

  dimension: poster {
    type: string
    sql: ${TABLE}.Poster ;;
  }

  dimension: production_house {
    type: string
    sql: ${TABLE}.Production_House ;;
  }

  dimension: release_date {
    type: string
    sql: ${TABLE}.Release_Date ;;
  }

  dimension_group: release_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.release_date_date ;;
  }

  dimension: rotten_tomatoes_score {
    type: number
    sql: ${TABLE}.Rotten_Tomatoes_Score ;;
  }

  dimension: runtime {
    type: string
    sql: ${TABLE}.Runtime ;;
  }

  dimension: series_or_movie {
    type: string
    sql: ${TABLE}.Series_or_Movie ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Tags ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: tmdb_trailer {
    type: string
    sql: ${TABLE}.TMDb_Trailer ;;
  }

  dimension: trailer_site {
    type: string
    sql: ${TABLE}.Trailer_Site ;;
  }

  dimension: view_rating {
    type: string
    sql: ${TABLE}.View_Rating ;;
  }

  dimension: writer {
    type: string
    sql: ${TABLE}.Writer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
