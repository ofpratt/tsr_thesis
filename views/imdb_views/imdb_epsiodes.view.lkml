# The name of this view in Looker is "Imdb Epsiodes"
view: imdb_epsiodes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.imdb_epsiodes`
    ;;
  drill_fields: [tconst]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: tconst {
    primary_key: yes
    type: string
    sql: ${TABLE}.tconst ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Episode Number" in Explore.

  dimension: episode_number {
    type: number
    sql: ${TABLE}.episodeNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_episode_number {
    type: sum
    sql: ${episode_number} ;;
  }

  measure: average_episode_number {
    type: average
    sql: ${episode_number} ;;
  }

  dimension: season_number {
    type: number
    sql: ${TABLE}.seasonNumber ;;
  }

  dimension: series_tconst {
    type: string
    sql: ${TABLE}.series_tconst ;;
  }

  measure: count {
    type: count
    drill_fields: [tconst]
  }
}
