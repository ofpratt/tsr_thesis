# The name of this view in Looker is "Worldhappinessreport"
view: worldhappinessreport {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `happy.world-happiness-report`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country Name" in Explore.

  dimension: country_name {
    type: string
    sql: ${TABLE}.Country_name ;;
  }

  dimension: dystopia___residual {
    type: number
    sql: ${TABLE}.Dystopia___residual ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dystopia___residual {
    type: sum
    sql: ${dystopia___residual} ;;
  }

  measure: average_dystopia___residual {
    type: average
    sql: ${dystopia___residual} ;;
  }

  dimension: explained_by__freedom_to_make_life_choices {
    type: number
    sql: ${TABLE}.Explained_by__Freedom_to_make_life_choices ;;
  }

  dimension: explained_by__generosity {
    type: number
    sql: ${TABLE}.Explained_by__Generosity ;;
  }

  dimension: explained_by__healthy_life_expectancy {
    type: number
    sql: ${TABLE}.Explained_by__Healthy_life_expectancy ;;
  }

  dimension: explained_by__log_gdp_per_capita {
    type: number
    sql: ${TABLE}.Explained_by__Log_GDP_per_capita ;;
  }

  dimension: explained_by__perceptions_of_corruption {
    type: number
    sql: ${TABLE}.Explained_by__Perceptions_of_corruption ;;
  }

  dimension: explained_by__social_support {
    type: number
    sql: ${TABLE}.Explained_by__Social_support ;;
  }

  dimension: freedom_to_make_life_choices {
    type: number
    sql: ${TABLE}.Freedom_to_make_life_choices ;;
  }

  dimension: generosity {
    type: number
    sql: ${TABLE}.Generosity ;;
  }

  dimension: healthy_life_expectancy {
    type: number
    sql: ${TABLE}.Healthy_life_expectancy ;;
  }

  dimension: ladder_score {
    type: number
    sql: ${TABLE}.Ladder_score ;;
  }

  dimension: ladder_score_in_dystopia {
    type: number
    sql: ${TABLE}.Ladder_score_in_Dystopia ;;
  }

  dimension: logged_gdp_per_capita {
    type: number
    sql: ${TABLE}.Logged_GDP_per_capita ;;
  }

  dimension: lowerwhisker {
    type: number
    sql: ${TABLE}.lowerwhisker ;;
  }

  dimension: perceptions_of_corruption {
    type: number
    sql: ${TABLE}.Perceptions_of_corruption ;;
  }

  dimension: regional_indicator {
    type: string
    sql: ${TABLE}.Regional_indicator ;;
  }

  dimension: social_support {
    type: number
    sql: ${TABLE}.Social_support ;;
  }

  dimension: standard_error_of_ladder_score {
    type: number
    sql: ${TABLE}.Standard_error_of_ladder_score ;;
  }

  dimension: upperwhisker {
    type: number
    sql: ${TABLE}.upperwhisker ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
