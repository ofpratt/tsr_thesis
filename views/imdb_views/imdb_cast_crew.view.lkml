# The name of this view in Looker is "Imdb Cast Crew"
view: imdb_cast_crew {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `IMDB.imdb_cast_crew`
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
  # This dimension will be called "Characters" in Explore.

  dimension: characters {
    type: string
    sql: ${TABLE}.characters ;;
  }

  dimension: crew {
    type: string
    sql: ${TABLE}.crew ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  measure: count {
    type: count
    drill_fields: [tconst]
  }
}
