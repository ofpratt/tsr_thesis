# The name of this view in Looker is "Country"
view: country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `worldwide_economic_remittances.country`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alpha2 Code" in Explore.

  dimension: alpha2_code {
    type: string
    sql: ${TABLE}.Alpha2Code ;;
  }

  dimension: alternative_conversion_factor {
    type: string
    sql: ${TABLE}.AlternativeConversionFactor ;;
  }

  dimension: balance_of_payments_manual_in_use {
    type: string
    sql: ${TABLE}.BalanceOfPaymentsManualInUse ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: currency_unit {
    type: string
    sql: ${TABLE}.CurrencyUnit ;;
  }

  dimension: external_debt_reporting_status {
    type: string
    sql: ${TABLE}.ExternalDebtReportingStatus ;;
  }

  dimension: government_accounting_concept {
    type: string
    sql: ${TABLE}.GovernmentAccountingConcept ;;
  }

  dimension: imf_data_dissemination_standard {
    type: string
    sql: ${TABLE}.ImfDataDisseminationStandard ;;
  }

  dimension: income_group {
    type: string
    sql: ${TABLE}.IncomeGroup ;;
  }

  dimension: latest_agricultural_census {
    type: string
    sql: ${TABLE}.LatestAgriculturalCensus ;;
  }

  dimension: latest_household_survey {
    type: string
    sql: ${TABLE}.LatestHouseholdSurvey ;;
  }

  dimension: latest_industrial_data {
    type: number
    sql: ${TABLE}.LatestIndustrialData ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latest_industrial_data {
    type: sum
    sql: ${latest_industrial_data} ;;
  }

  measure: average_latest_industrial_data {
    type: average
    sql: ${latest_industrial_data} ;;
  }

  dimension: latest_population_census {
    type: string
    sql: ${TABLE}.LatestPopulationCensus ;;
  }

  dimension: latest_trade_data {
    type: number
    sql: ${TABLE}.LatestTradeData ;;
  }

  dimension: latest_water_withdrawal_data {
    type: number
    sql: ${TABLE}.LatestWaterWithdrawalData ;;
  }

  dimension: lending_category {
    type: string
    sql: ${TABLE}.LendingCategory ;;
  }

  dimension: long_name {
    type: string
    sql: ${TABLE}.LongName ;;
  }

  dimension: national_accounts_base_year {
    type: string
    sql: ${TABLE}.NationalAccountsBaseYear ;;
  }

  dimension: national_accounts_reference_year {
    type: string
    sql: ${TABLE}.NationalAccountsReferenceYear ;;
  }

  dimension: other_groups {
    type: string
    sql: ${TABLE}.OtherGroups ;;
  }

  dimension: ppp_survey_year {
    type: string
    sql: ${TABLE}.PppSurveyYear ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.ShortName ;;
  }

  dimension: sna_price_valuation {
    type: string
    sql: ${TABLE}.SnaPriceValuation ;;
  }

  dimension: source_of_most_recent_income_and_expenditure_data {
    type: string
    sql: ${TABLE}.SourceOfMostRecentIncomeAndExpenditureData ;;
  }

  dimension: special_notes {
    type: string
    sql: ${TABLE}.SpecialNotes ;;
  }

  dimension: system_of_national_accounts {
    type: string
    sql: ${TABLE}.SystemOfNationalAccounts ;;
  }

  dimension: system_of_trade {
    type: string
    sql: ${TABLE}.SystemOfTrade ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: vital_registration_complete {
    type: string
    sql: ${TABLE}.VitalRegistrationComplete ;;
  }

  dimension: wb2_code {
    type: string
    sql: ${TABLE}.Wb2Code ;;
  }

  measure: count {
    type: count
    drill_fields: [short_name, table_name, long_name]
  }
}
