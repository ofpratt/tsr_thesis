# The name of this view in Looker is "Remittanceinflow"
view: remittanceinflow {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `worldwide_economic_remittances.remittance-inflow`
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
  # This dimension will be called " 1970" in Explore.

  dimension: _1970 {
    type: number
    sql: ${TABLE}._1970 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__1970 {
    type: sum
    sql: ${_1970} ;;
  }

  measure: average__1970 {
    type: average
    sql: ${_1970} ;;
  }

  dimension: _1971 {
    type: number
    sql: ${TABLE}._1971 ;;
  }

  dimension: _1972 {
    type: number
    sql: ${TABLE}._1972 ;;
  }

  dimension: _1973 {
    type: number
    sql: ${TABLE}._1973 ;;
  }

  dimension: _1974 {
    type: number
    sql: ${TABLE}._1974 ;;
  }

  dimension: _1975 {
    type: number
    sql: ${TABLE}._1975 ;;
  }

  dimension: _1976 {
    type: number
    sql: ${TABLE}._1976 ;;
  }

  dimension: _1977 {
    type: number
    sql: ${TABLE}._1977 ;;
  }

  dimension: _1978 {
    type: number
    sql: ${TABLE}._1978 ;;
  }

  dimension: _1979 {
    type: number
    sql: ${TABLE}._1979 ;;
  }

  dimension: _1980 {
    type: number
    sql: ${TABLE}._1980 ;;
  }

  dimension: _1981 {
    type: number
    sql: ${TABLE}._1981 ;;
  }

  dimension: _1982 {
    type: number
    sql: ${TABLE}._1982 ;;
  }

  dimension: _1983 {
    type: number
    sql: ${TABLE}._1983 ;;
  }

  dimension: _1984 {
    type: number
    sql: ${TABLE}._1984 ;;
  }

  dimension: _1985 {
    type: number
    sql: ${TABLE}._1985 ;;
  }

  dimension: _1986 {
    type: number
    sql: ${TABLE}._1986 ;;
  }

  dimension: _1987 {
    type: number
    sql: ${TABLE}._1987 ;;
  }

  dimension: _1988 {
    type: number
    sql: ${TABLE}._1988 ;;
  }

  dimension: _1989 {
    type: number
    sql: ${TABLE}._1989 ;;
  }

  dimension: _1990 {
    type: number
    sql: ${TABLE}._1990 ;;
  }

  dimension: _1991 {
    type: number
    sql: ${TABLE}._1991 ;;
  }

  dimension: _1992 {
    type: number
    sql: ${TABLE}._1992 ;;
  }

  dimension: _1993 {
    type: number
    sql: ${TABLE}._1993 ;;
  }

  dimension: _1994 {
    type: number
    sql: ${TABLE}._1994 ;;
  }

  dimension: _1995 {
    type: number
    sql: ${TABLE}._1995 ;;
  }

  dimension: _1996 {
    type: number
    sql: ${TABLE}._1996 ;;
  }

  dimension: _1997 {
    type: number
    sql: ${TABLE}._1997 ;;
  }

  dimension: _1998 {
    type: number
    sql: ${TABLE}._1998 ;;
  }

  dimension: _1999 {
    type: number
    sql: ${TABLE}._1999 ;;
  }

  dimension: _2000 {
    type: number
    sql: ${TABLE}._2000 ;;
  }

  dimension: _2001 {
    type: number
    sql: ${TABLE}._2001 ;;
  }

  dimension: _2002 {
    type: number
    sql: ${TABLE}._2002 ;;
  }

  dimension: _2003 {
    type: number
    sql: ${TABLE}._2003 ;;
  }

  dimension: _2004 {
    type: number
    sql: ${TABLE}._2004 ;;
  }

  dimension: _2005 {
    type: number
    sql: ${TABLE}._2005 ;;
  }

  dimension: _2006 {
    type: number
    sql: ${TABLE}._2006 ;;
  }

  dimension: _2007 {
    type: number
    sql: ${TABLE}._2007 ;;
  }

  dimension: _2008 {
    type: number
    sql: ${TABLE}._2008 ;;
  }

  dimension: _2009 {
    type: number
    sql: ${TABLE}._2009 ;;
  }

  dimension: _2010 {
    type: number
    sql: ${TABLE}._2010 ;;
  }

  dimension: _2011 {
    type: number
    sql: ${TABLE}._2011 ;;
  }

  dimension: _2012 {
    type: number
    sql: ${TABLE}._2012 ;;
  }

  dimension: _2013 {
    type: number
    sql: ${TABLE}._2013 ;;
  }

  dimension: _2014 {
    type: number
    sql: ${TABLE}._2014 ;;
  }

  dimension: _2015 {
    type: number
    sql: ${TABLE}._2015 ;;
  }

  dimension: _2016 {
    type: number
    sql: ${TABLE}._2016 ;;
  }
  dimension: migrant_remittance_inflows_us_million {
    type: string
    sql: ${TABLE}.migrant_remittance_inflows_US_million ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
