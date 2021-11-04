# The name of this view in Looker is "Characters"
view: characters {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `harryPotter.characters`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ancestry" in Explore.

  dimension: ancestry {
    type: string
    sql: ${TABLE}.ancestry ;;
  }

  dimension: associated_groups {
    type: string
    sql: ${TABLE}.associated_groups ;;
  }

  dimension: birth {
    type: string
    sql: ${TABLE}.birth ;;
  }

  dimension: books_featured_in {
    type: number
    sql: ${TABLE}.books_featured_in ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_books_featured_in {
    type: sum
    sql: ${books_featured_in} ;;
  }

  measure: average_books_featured_in {
    type: average
    sql: ${books_featured_in} ;;
  }

  dimension: death {
    type: string
    sql: ${TABLE}.death ;;
  }

  dimension: eye_color {
    type: string
    sql: ${TABLE}.eye_color ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: hair_color {
    type: string
    sql: ${TABLE}.hair_color ;;
  }

  dimension: house {
    type: string
    sql: ${TABLE}.house ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: patronus {
    type: string
    sql: ${TABLE}.patronus ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: wand {
    type: string
    sql: ${TABLE}.wand ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
