# The name of this view in Looker is "Spells Used"
view: spells_used {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `harryPotter.spells_used`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Character" in Explore.

  dimension: character {
    type: number
    sql: ${TABLE}.character ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_character {
    type: sum
    sql: ${character} ;;
  }

  measure: average_character {
    type: average
    sql: ${character} ;;
  }

  dimension: power {
    type: number
    sql: ${TABLE}.power ;;
  }

  dimension: spell_used {
    type: number
    sql: ${TABLE}.spell_used ;;
  }

  dimension: used_on {
    type: number
    sql: ${TABLE}.used_on ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
