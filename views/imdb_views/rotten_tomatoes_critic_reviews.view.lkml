# The name of this view in Looker is "Rotten Tomatoes Critic Reviews"
view: rotten_tomatoes_critic_reviews {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.rotten_tomatoes_critic_reviews`
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
  # This dimension will be called "Critic Name" in Explore.

  dimension: critic_name {
    type: string
    sql: ${TABLE}.critic_name ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}.publisher_name ;;
  }

  dimension: review_content {
    type: string
    sql: ${TABLE}.review_content ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: review {
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
    sql: ${TABLE}.review_date ;;
  }

  dimension: review_score {
    type: string
    sql: ${TABLE}.review_score ;;
  }

  dimension: review_type {
    type: string
    sql: ${TABLE}.review_type ;;
  }

  dimension: top_critic {
    type: yesno
    sql: ${TABLE}.top_critic ;;
  }

  measure: count {
    type: count
    drill_fields: [rotten_tomatoes_link, publisher_name, critic_name]
  }
}
