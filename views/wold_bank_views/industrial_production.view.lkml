# The name of this view in Looker is "Industrial Production"
view: industrial_production {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `worldwide_economic_remittances.industrial_production`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Advanced Economies" in Explore.

  dimension: advanced_economies {
    type: number
    sql: ${TABLE}.Advanced_Economies ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_advanced_economies {
    type: sum
    sql: ${advanced_economies} ;;
  }

  measure: average_advanced_economies {
    type: average
    sql: ${advanced_economies} ;;
  }

  dimension: austria {
    type: number
    sql: ${TABLE}.Austria ;;
  }

  dimension: bangladesh {
    type: number
    sql: ${TABLE}.Bangladesh ;;
  }

  dimension: barbados {
    type: number
    sql: ${TABLE}.Barbados ;;
  }

  dimension: belarus {
    type: number
    sql: ${TABLE}.Belarus ;;
  }

  dimension: belgium {
    type: number
    sql: ${TABLE}.Belgium ;;
  }

  dimension: bosnia_and_herzegovina {
    type: number
    sql: ${TABLE}.Bosnia_and_Herzegovina ;;
  }

  dimension: brazil {
    type: number
    sql: ${TABLE}.Brazil ;;
  }

  dimension: bulgaria {
    type: number
    sql: ${TABLE}.Bulgaria ;;
  }

  dimension: canada {
    type: number
    sql: ${TABLE}.Canada ;;
  }

  dimension: chile {
    type: number
    sql: ${TABLE}.Chile ;;
  }

  dimension: china {
    type: number
    sql: ${TABLE}.China ;;
  }

  dimension: colombia {
    type: number
    sql: ${TABLE}.Colombia ;;
  }

  dimension: costa_rica {
    type: number
    sql: ${TABLE}.Costa_Rica ;;
  }

  dimension: croatia {
    type: number
    sql: ${TABLE}.Croatia ;;
  }

  dimension: cyprus {
    type: number
    sql: ${TABLE}.Cyprus ;;
  }

  dimension: czech_republic {
    type: number
    sql: ${TABLE}.Czech_Republic ;;
  }

  dimension: denmark {
    type: number
    sql: ${TABLE}.Denmark ;;
  }

  dimension: ecuador {
    type: number
    sql: ${TABLE}.Ecuador ;;
  }

  dimension: egypt__arab_rep_ {
    type: number
    sql: ${TABLE}.Egypt__Arab_Rep_ ;;
  }

  dimension: el_salvador {
    type: number
    sql: ${TABLE}.El_Salvador ;;
  }

  dimension: emde_east_asia___pacific {
    type: number
    sql: ${TABLE}.EMDE_East_Asia___Pacific ;;
  }

  dimension: emde_europe___central_asia {
    type: number
    sql: ${TABLE}.EMDE_Europe___Central_Asia ;;
  }

  dimension: emde_latin_america___caribbean {
    type: number
    sql: ${TABLE}.EMDE_Latin_America___Caribbean ;;
  }

  dimension: emde_middle_east___n__africa {
    type: number
    sql: ${TABLE}.EMDE_Middle_East___N__Africa ;;
  }

  dimension: emde_south_asia {
    type: number
    sql: ${TABLE}.EMDE_South_Asia ;;
  }

  dimension: emde_sub_saharan_africa {
    type: number
    sql: ${TABLE}.EMDE_Sub_Saharan_Africa ;;
  }

  dimension: emerging_market_and_developing_economies__emdes_ {
    type: number
    sql: ${TABLE}.Emerging_Market_and_Developing_Economies__EMDEs_ ;;
  }

  dimension: estonia {
    type: number
    sql: ${TABLE}.Estonia ;;
  }

  dimension: finland {
    type: number
    sql: ${TABLE}.Finland ;;
  }

  dimension: france {
    type: number
    sql: ${TABLE}.France ;;
  }

  dimension: germany {
    type: number
    sql: ${TABLE}.Germany ;;
  }

  dimension: greece {
    type: number
    sql: ${TABLE}.Greece ;;
  }

  dimension: guatemala {
    type: number
    sql: ${TABLE}.Guatemala ;;
  }

  dimension: high_income_countries {
    type: number
    sql: ${TABLE}.High_Income_Countries ;;
  }

  dimension: honduras {
    type: number
    sql: ${TABLE}.Honduras ;;
  }

  dimension: hungary {
    type: number
    sql: ${TABLE}.Hungary ;;
  }

  dimension: iceland {
    type: number
    sql: ${TABLE}.Iceland ;;
  }

  dimension: india {
    type: number
    sql: ${TABLE}.India ;;
  }

  dimension: indonesia {
    type: number
    sql: ${TABLE}.Indonesia ;;
  }

  dimension: ireland {
    type: number
    sql: ${TABLE}.Ireland ;;
  }

  dimension: israel {
    type: number
    sql: ${TABLE}.Israel ;;
  }

  dimension: italy {
    type: number
    sql: ${TABLE}.Italy ;;
  }

  dimension: japan {
    type: number
    sql: ${TABLE}.Japan ;;
  }

  dimension: jordan {
    type: number
    sql: ${TABLE}.Jordan ;;
  }

  dimension: kazakhstan {
    type: number
    sql: ${TABLE}.Kazakhstan ;;
  }

  dimension: korea__rep_ {
    type: number
    sql: ${TABLE}.Korea__Rep_ ;;
  }

  dimension: latvia {
    type: number
    sql: ${TABLE}.Latvia ;;
  }

  dimension: lithuania {
    type: number
    sql: ${TABLE}.Lithuania ;;
  }

  dimension: low_income_countries__lic_ {
    type: number
    sql: ${TABLE}.Low_Income_Countries__LIC_ ;;
  }

  dimension: luxembourg {
    type: number
    sql: ${TABLE}.Luxembourg ;;
  }

  dimension: malawi {
    type: number
    sql: ${TABLE}.Malawi ;;
  }

  dimension: malaysia {
    type: number
    sql: ${TABLE}.Malaysia ;;
  }

  dimension: malta {
    type: number
    sql: ${TABLE}.Malta ;;
  }

  dimension: mexico {
    type: number
    sql: ${TABLE}.Mexico ;;
  }

  dimension: middle_income_countries__mic_ {
    type: number
    sql: ${TABLE}.Middle_Income_Countries__MIC_ ;;
  }

  dimension: moldova__rep_ {
    type: number
    sql: ${TABLE}.Moldova__Rep_ ;;
  }

  dimension: mongolia {
    type: number
    sql: ${TABLE}.Mongolia ;;
  }

  dimension: montenegro {
    type: number
    sql: ${TABLE}.Montenegro ;;
  }

  dimension: netherlands {
    type: number
    sql: ${TABLE}.Netherlands ;;
  }

  dimension: nicaragua {
    type: number
    sql: ${TABLE}.Nicaragua ;;
  }

  dimension: north_macedonia {
    type: number
    sql: ${TABLE}.North_Macedonia ;;
  }

  dimension: norway {
    type: number
    sql: ${TABLE}.Norway ;;
  }

  dimension: pakistan {
    type: number
    sql: ${TABLE}.Pakistan ;;
  }

  dimension: paraguay {
    type: number
    sql: ${TABLE}.Paraguay ;;
  }

  dimension: peru {
    type: number
    sql: ${TABLE}.Peru ;;
  }

  dimension: philippines {
    type: number
    sql: ${TABLE}.Philippines ;;
  }

  dimension: poland {
    type: number
    sql: ${TABLE}.Poland ;;
  }

  dimension: portugal {
    type: number
    sql: ${TABLE}.Portugal ;;
  }

  dimension: romania {
    type: number
    sql: ${TABLE}.Romania ;;
  }

  dimension: russian_federation {
    type: number
    sql: ${TABLE}.Russian_Federation ;;
  }

  dimension: senegal {
    type: number
    sql: ${TABLE}.Senegal ;;
  }

  dimension: serbia {
    type: number
    sql: ${TABLE}.Serbia ;;
  }

  dimension: singapore {
    type: number
    sql: ${TABLE}.Singapore ;;
  }

  dimension: slovakia {
    type: number
    sql: ${TABLE}.Slovakia ;;
  }

  dimension: slovenia {
    type: number
    sql: ${TABLE}.Slovenia ;;
  }

  dimension: south_africa {
    type: number
    sql: ${TABLE}.South_Africa ;;
  }

  dimension: spain {
    type: number
    sql: ${TABLE}.Spain ;;
  }

  dimension: sri_lanka {
    type: number
    sql: ${TABLE}.Sri_Lanka ;;
  }

  dimension: sweden {
    type: number
    sql: ${TABLE}.Sweden ;;
  }

  dimension: thailand {
    type: number
    sql: ${TABLE}.Thailand ;;
  }

  dimension: tunisia {
    type: number
    sql: ${TABLE}.Tunisia ;;
  }

  dimension: turkey {
    type: number
    sql: ${TABLE}.Turkey ;;
  }

  dimension: uganda {
    type: number
    sql: ${TABLE}.Uganda ;;
  }

  dimension: ukraine {
    type: number
    sql: ${TABLE}.Ukraine ;;
  }

  dimension: united_kingdom {
    type: number
    sql: ${TABLE}.United_Kingdom ;;
  }

  dimension: united_states {
    type: number
    sql: ${TABLE}.United_States ;;
  }

  dimension: uruguay {
    type: number
    sql: ${TABLE}.Uruguay ;;
  }

  dimension: vietnam {
    type: number
    sql: ${TABLE}.Vietnam ;;
  }

  dimension: world__wbg_members_ {
    type: number
    sql: ${TABLE}.World__WBG_members_ ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
