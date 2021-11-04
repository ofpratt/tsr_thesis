# The name of this view in Looker is "Imdb People"
view: imdb_people {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.imdb_people`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Birth" in Explore.

  dimension: birth {
    type: number
    sql: ${TABLE}.birth ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_birth {
    type: sum
    sql: ${birth} ;;
  }

  measure: average_birth {
    type: average
    sql: ${birth} ;;
  }

  dimension: death {
    type: number
    sql: ${TABLE}.death ;;
  }

  dimension: nconst {
    type: string
    sql: ${TABLE}.nconst ;;
  }

  dimension: primary_name {
    type: string
    sql: ${TABLE}.primaryName ;;
  }

  dimension: primary_profession {
    type: string
    sql: ${TABLE}.primaryProfession ;;
  }

  measure: count {
    type: count
    drill_fields: [primary_name]
  }
}
