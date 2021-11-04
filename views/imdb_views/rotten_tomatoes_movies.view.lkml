# The name of this view in Looker is "Rotten Tomatoes Movies"
view: rotten_tomatoes_movies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.rotten_tomatoes_movies`
    ;;
  drill_fields: [rotten_tomatoes_link]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: rotten_tomatoes_link {
    primary_key: yes
    type: string
    sql: ${TABLE}.rotten_tomatoes_link ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actors" in Explore.

  dimension: actors {
    type: string
    sql: ${TABLE}.actors ;;
  }

  dimension: audience_count {
    type: number
    sql: ${TABLE}.audience_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_audience_count {
    type: sum
    sql: ${audience_count} ;;
  }

  measure: average_audience_count {
    type: average
    sql: ${audience_count} ;;
  }

  dimension: audience_rating {
    type: number
    sql: ${TABLE}.audience_rating ;;
  }

  dimension: audience_status {
    type: string
    sql: ${TABLE}.audience_status ;;
  }

  dimension: authors {
    type: string
    sql: ${TABLE}.authors ;;
  }

  dimension: content_rating {
    type: string
    sql: ${TABLE}.content_rating ;;
  }

  dimension: critics_consensus {
    type: string
    sql: ${TABLE}.critics_consensus ;;
  }

  dimension: directors {
    type: string
    sql: ${TABLE}.directors ;;
  }

  dimension: genres {
    type: string
    sql: ${TABLE}.genres ;;
  }

  dimension: movie_info {
    type: string
    sql: ${TABLE}.movie_info ;;
  }

  dimension: movie_title {
    type: string
    sql: ${TABLE}.movie_title ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: original_release {
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
    sql: ${TABLE}.original_release_date ;;
  }

  dimension: production_company {
    type: string
    sql: ${TABLE}.production_company ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension_group: streaming_release {
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
    sql: ${TABLE}.streaming_release_date ;;
  }

  dimension: tomatometer_count {
    type: number
    sql: ${TABLE}.tomatometer_count ;;
  }

  dimension: tomatometer_fresh_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_fresh_critics_count ;;
  }

  dimension: tomatometer_rating {
    type: number
    sql: ${TABLE}.tomatometer_rating ;;
  }

  dimension: tomatometer_rotten_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_rotten_critics_count ;;
  }

  dimension: tomatometer_status {
    type: string
    sql: ${TABLE}.tomatometer_status ;;
  }

  dimension: tomatometer_top_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_top_critics_count ;;
  }

  measure: count {
    type: count
    drill_fields: [rotten_tomatoes_link]
  }
}
