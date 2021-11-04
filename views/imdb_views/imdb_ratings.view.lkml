# The name of this view in Looker is "Imdb Ratings"
view: imdb_ratings {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.imdb_ratings`
    ;;
  drill_fields: [tconst]

  dimension: tconst {
    primary_key: yes
    type: string
    sql: ${TABLE}.tconst ;;
  }

  dimension: average_rating {
    type: number
    sql: ${TABLE}.averageRating ;;
  }

  measure: total_average_rating {
    type: sum
    sql: ${average_rating} ;;
  }

  measure: average_average_rating {
    type: average
    sql: ${average_rating} ;;
  }

  dimension: num_votes {
    type: number
    sql: ${TABLE}.numVotes ;;
  }

  measure: count {
    type: count
    drill_fields: [tconst]
  }
}
