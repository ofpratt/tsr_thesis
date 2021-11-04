# The name of this view in Looker is "Spells"
view: spells {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `harryPotter.spells`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " ID " in Explore.

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: etymology {
    type: string
    sql: ${TABLE}.etymology ;;
  }

  dimension: mention {
    type: string
    sql: ${TABLE}.mention ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: other_name {
    type: string
    sql: ${TABLE}.other_name ;;
  }

  dimension: pronunciation {
    type: string
    sql: ${TABLE}.pronunciation ;;
  }

  dimension: spell_type {
    type: string
    sql: ${TABLE}.spell_type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, other_name]
  }
}
