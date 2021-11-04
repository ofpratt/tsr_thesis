# The name of this view in Looker is "Aggressions"
view: aggressions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `harryPotter.aggressions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abb" in Explore.

  dimension: abb {
    type: string
    sql: ${TABLE}.abb ;;
  }

  dimension: agg_per_mention {
    type: number
    sql: ${TABLE}.agg_per_mention ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_agg_per_mention {
    type: sum
    sql: ${agg_per_mention} ;;
  }

  measure: average_agg_per_mention {
    type: average
    sql: ${agg_per_mention} ;;
  }

  dimension: agg_weighted {
    type: number
    sql: ${TABLE}.agg_weighted ;;
  }

  dimension: aggressions {
    type: number
    sql: ${TABLE}.aggressions ;;
  }

  dimension: book {
    type: string
    sql: ${TABLE}.book ;;
  }

  dimension: mentions {
    type: number
    sql: ${TABLE}.mentions ;;
  }

  dimension: mentions_per_p {
    type: number
    sql: ${TABLE}.mentions_per_p ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: paragraphs {
    type: number
    sql: ${TABLE}.paragraphs ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
