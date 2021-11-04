# The name of this view in Looker is "Remittance Bilateral"
view: remittance_bilateral {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `worldwide_economic_remittances.remittance_bilateral`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Afghanistan" in Explore.

  dimension: afghanistan {
    type: number
    sql: ${TABLE}.Afghanistan ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_afghanistan {
    type: sum
    sql: ${afghanistan} ;;
  }

  measure: average_afghanistan {
    type: average
    sql: ${afghanistan} ;;
  }

  dimension: albania {
    type: number
    sql: ${TABLE}.Albania ;;
  }

  dimension: algeria {
    type: number
    sql: ${TABLE}.Algeria ;;
  }

  dimension: american_samoa {
    type: number
    sql: ${TABLE}.American_Samoa ;;
  }

  dimension: andorra {
    type: number
    sql: ${TABLE}.Andorra ;;
  }

  dimension: angola {
    type: number
    sql: ${TABLE}.Angola ;;
  }

  dimension: antigua_and_barbuda {
    type: number
    sql: ${TABLE}.Antigua_and_Barbuda ;;
  }

  dimension: arab_rep_egypt {
    type: number
    sql: ${TABLE}.Arab_Rep_Egypt ;;
  }

  dimension: argentina {
    type: number
    sql: ${TABLE}.Argentina ;;
  }

  dimension: armenia {
    type: number
    sql: ${TABLE}.Armenia ;;
  }

  dimension: aruba {
    type: number
    sql: ${TABLE}.Aruba ;;
  }

  dimension: australia {
    type: number
    sql: ${TABLE}.Australia ;;
  }

  dimension: austria {
    type: number
    sql: ${TABLE}.Austria ;;
  }

  dimension: azerbaijan {
    type: number
    sql: ${TABLE}.Azerbaijan ;;
  }

  dimension: bahrain {
    type: number
    sql: ${TABLE}.Bahrain ;;
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

  dimension: belize {
    type: number
    sql: ${TABLE}.Belize ;;
  }

  dimension: benin {
    type: number
    sql: ${TABLE}.Benin ;;
  }

  dimension: bermuda {
    type: number
    sql: ${TABLE}.Bermuda ;;
  }

  dimension: bhutan {
    type: number
    sql: ${TABLE}.Bhutan ;;
  }

  dimension: bolivia {
    type: number
    sql: ${TABLE}.Bolivia ;;
  }

  dimension: bosnia_and_herzegovina {
    type: number
    sql: ${TABLE}.Bosnia_and_Herzegovina ;;
  }

  dimension: botswana {
    type: number
    sql: ${TABLE}.Botswana ;;
  }

  dimension: brazil {
    type: number
    sql: ${TABLE}.Brazil ;;
  }

  dimension: brunei_darussalam {
    type: number
    sql: ${TABLE}.Brunei_Darussalam ;;
  }

  dimension: bulgaria {
    type: number
    sql: ${TABLE}.Bulgaria ;;
  }

  dimension: burkina_faso {
    type: number
    sql: ${TABLE}.Burkina_Faso ;;
  }

  dimension: burundi {
    type: number
    sql: ${TABLE}.Burundi ;;
  }

  dimension: cabo_verde {
    type: number
    sql: ${TABLE}.Cabo_Verde ;;
  }

  dimension: cambodia {
    type: number
    sql: ${TABLE}.Cambodia ;;
  }

  dimension: cameroon {
    type: number
    sql: ${TABLE}.Cameroon ;;
  }

  dimension: canada {
    type: number
    sql: ${TABLE}.Canada ;;
  }

  dimension: cayman_islands {
    type: number
    sql: ${TABLE}.Cayman_Islands ;;
  }

  dimension: central_african_republic {
    type: number
    sql: ${TABLE}.Central_African_Republic ;;
  }

  dimension: chad {
    type: number
    sql: ${TABLE}.Chad ;;
  }

  dimension: channel_islands {
    type: number
    sql: ${TABLE}.Channel_Islands ;;
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

  dimension: comoros {
    type: number
    sql: ${TABLE}.Comoros ;;
  }

  dimension: costa_rica {
    type: number
    sql: ${TABLE}.Costa_Rica ;;
  }

  dimension: cote_d_ivoire {
    type: number
    sql: ${TABLE}.Cote_dIvoire ;;
  }

  dimension: croatia {
    type: number
    sql: ${TABLE}.Croatia ;;
  }

  dimension: cuba {
    type: number
    sql: ${TABLE}.Cuba ;;
  }

  dimension: curacao {
    type: number
    sql: ${TABLE}.Curacao ;;
  }

  dimension: cyprus {
    type: number
    sql: ${TABLE}.Cyprus ;;
  }

  dimension: czech_republic {
    type: number
    sql: ${TABLE}.Czech_Republic ;;
  }

  dimension: dem_rep_congo {
    type: number
    sql: ${TABLE}.Dem_Rep_Congo ;;
  }

  dimension: denmark {
    type: number
    sql: ${TABLE}.Denmark ;;
  }

  dimension: djibouti {
    type: number
    sql: ${TABLE}.Djibouti ;;
  }

  dimension: dominica {
    type: number
    sql: ${TABLE}.Dominica ;;
  }

  dimension: dominican_republic {
    type: number
    sql: ${TABLE}.Dominican_Republic ;;
  }

  dimension: ecuador {
    type: number
    sql: ${TABLE}.Ecuador ;;
  }

  dimension: el_salvador {
    type: number
    sql: ${TABLE}.El_Salvador ;;
  }

  dimension: equatorial_guinea {
    type: number
    sql: ${TABLE}.Equatorial_Guinea ;;
  }

  dimension: eritrea {
    type: number
    sql: ${TABLE}.Eritrea ;;
  }

  dimension: estonia {
    type: number
    sql: ${TABLE}.Estonia ;;
  }

  dimension: ethiopia {
    type: number
    sql: ${TABLE}.Ethiopia ;;
  }

  dimension: faeroe_islands {
    type: number
    sql: ${TABLE}.Faeroe_Islands ;;
  }

  dimension: fiji {
    type: number
    sql: ${TABLE}.Fiji ;;
  }

  dimension: finland {
    type: number
    sql: ${TABLE}.Finland ;;
  }

  dimension: france {
    type: number
    sql: ${TABLE}.France ;;
  }

  dimension: french_polynesia {
    type: number
    sql: ${TABLE}.French_Polynesia ;;
  }

  dimension: gabon {
    type: number
    sql: ${TABLE}.Gabon ;;
  }

  dimension: georgia {
    type: number
    sql: ${TABLE}.Georgia ;;
  }

  dimension: germany {
    type: number
    sql: ${TABLE}.Germany ;;
  }

  dimension: ghana {
    type: number
    sql: ${TABLE}.Ghana ;;
  }

  dimension: greece {
    type: number
    sql: ${TABLE}.Greece ;;
  }

  dimension: greenland {
    type: number
    sql: ${TABLE}.Greenland ;;
  }

  dimension: grenada {
    type: number
    sql: ${TABLE}.Grenada ;;
  }

  dimension: guam {
    type: number
    sql: ${TABLE}.Guam ;;
  }

  dimension: guatemala {
    type: number
    sql: ${TABLE}.Guatemala ;;
  }

  dimension: guinea {
    type: number
    sql: ${TABLE}.Guinea ;;
  }

  dimension: guinea_bissau {
    type: number
    sql: ${TABLE}.Guinea_Bissau ;;
  }

  dimension: guyana {
    type: number
    sql: ${TABLE}.Guyana ;;
  }

  dimension: haiti {
    type: number
    sql: ${TABLE}.Haiti ;;
  }

  dimension: honduras {
    type: number
    sql: ${TABLE}.Honduras ;;
  }

  dimension: hong_kong {
    type: number
    sql: ${TABLE}.Hong_Kong ;;
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

  dimension: iran {
    type: number
    sql: ${TABLE}.Iran ;;
  }

  dimension: iraq {
    type: number
    sql: ${TABLE}.Iraq ;;
  }

  dimension: ireland {
    type: number
    sql: ${TABLE}.Ireland ;;
  }

  dimension: isle_of_man {
    type: number
    sql: ${TABLE}.Isle_of_Man ;;
  }

  dimension: israel {
    type: number
    sql: ${TABLE}.Israel ;;
  }

  dimension: italy {
    type: number
    sql: ${TABLE}.Italy ;;
  }

  dimension: jamaica {
    type: number
    sql: ${TABLE}.Jamaica ;;
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

  dimension: kenya {
    type: number
    sql: ${TABLE}.Kenya ;;
  }

  dimension: kiribati {
    type: number
    sql: ${TABLE}.Kiribati ;;
  }

  dimension: korea_dem {
    type: number
    sql: ${TABLE}.Korea_Dem ;;
  }

  dimension: korea_rep {
    type: number
    sql: ${TABLE}.Korea_Rep ;;
  }

  dimension: kosovo {
    type: number
    sql: ${TABLE}.Kosovo ;;
  }

  dimension: kuwait {
    type: number
    sql: ${TABLE}.Kuwait ;;
  }

  dimension: kyrgyz_republic {
    type: number
    sql: ${TABLE}.Kyrgyz_Republic ;;
  }

  dimension: lao_pdr {
    type: number
    sql: ${TABLE}.Lao_PDR ;;
  }

  dimension: latvia {
    type: number
    sql: ${TABLE}.Latvia ;;
  }

  dimension: lebanon {
    type: number
    sql: ${TABLE}.Lebanon ;;
  }

  dimension: lesotho {
    type: number
    sql: ${TABLE}.Lesotho ;;
  }

  dimension: liberia {
    type: number
    sql: ${TABLE}.Liberia ;;
  }

  dimension: libya {
    type: number
    sql: ${TABLE}.Libya ;;
  }

  dimension: liechtenstein {
    type: number
    sql: ${TABLE}.Liechtenstein ;;
  }

  dimension: lithuania {
    type: number
    sql: ${TABLE}.Lithuania ;;
  }

  dimension: luxembourg {
    type: number
    sql: ${TABLE}.Luxembourg ;;
  }

  dimension: macao_sar_china {
    type: number
    sql: ${TABLE}.Macao_SAR_China ;;
  }

  dimension: macedonia_fyr {
    type: number
    sql: ${TABLE}.Macedonia_FYR ;;
  }

  dimension: madagascar {
    type: number
    sql: ${TABLE}.Madagascar ;;
  }

  dimension: malawi {
    type: number
    sql: ${TABLE}.Malawi ;;
  }

  dimension: malaysia {
    type: number
    sql: ${TABLE}.Malaysia ;;
  }

  dimension: maldives {
    type: number
    sql: ${TABLE}.Maldives ;;
  }

  dimension: mali {
    type: number
    sql: ${TABLE}.Mali ;;
  }

  dimension: malta {
    type: number
    sql: ${TABLE}.Malta ;;
  }

  dimension: marshall_islands {
    type: number
    sql: ${TABLE}.Marshall_Islands ;;
  }

  dimension: mauritania {
    type: number
    sql: ${TABLE}.Mauritania ;;
  }

  dimension: mauritius {
    type: number
    sql: ${TABLE}.Mauritius ;;
  }

  dimension: mexico {
    type: number
    sql: ${TABLE}.Mexico ;;
  }

  dimension: micronesia_fed_sts {
    type: number
    sql: ${TABLE}.Micronesia_Fed_Sts ;;
  }

  dimension: moldova {
    type: number
    sql: ${TABLE}.Moldova ;;
  }

  dimension: monaco {
    type: number
    sql: ${TABLE}.Monaco ;;
  }

  dimension: mongolia {
    type: number
    sql: ${TABLE}.Mongolia ;;
  }

  dimension: montenegro {
    type: number
    sql: ${TABLE}.Montenegro ;;
  }

  dimension: morocco {
    type: number
    sql: ${TABLE}.Morocco ;;
  }

  dimension: mozambique {
    type: number
    sql: ${TABLE}.Mozambique ;;
  }

  dimension: myanmar {
    type: number
    sql: ${TABLE}.Myanmar ;;
  }

  dimension: namibia {
    type: number
    sql: ${TABLE}.Namibia ;;
  }

  dimension: nepal {
    type: number
    sql: ${TABLE}.Nepal ;;
  }

  dimension: netherlands {
    type: number
    sql: ${TABLE}.Netherlands ;;
  }

  dimension: new_caledonia {
    type: number
    sql: ${TABLE}.New_Caledonia ;;
  }

  dimension: new_zealand {
    type: number
    sql: ${TABLE}.New_Zealand ;;
  }

  dimension: nicaragua {
    type: number
    sql: ${TABLE}.Nicaragua ;;
  }

  dimension: niger {
    type: number
    sql: ${TABLE}.Niger ;;
  }

  dimension: nigeria {
    type: number
    sql: ${TABLE}.Nigeria ;;
  }

  dimension: northern_mariana_islands {
    type: number
    sql: ${TABLE}.Northern_Mariana_Islands ;;
  }

  dimension: norway {
    type: number
    sql: ${TABLE}.Norway ;;
  }

  dimension: oman {
    type: number
    sql: ${TABLE}.Oman ;;
  }

  dimension: pakistan {
    type: number
    sql: ${TABLE}.Pakistan ;;
  }

  dimension: palau {
    type: number
    sql: ${TABLE}.Palau ;;
  }

  dimension: panama {
    type: number
    sql: ${TABLE}.Panama ;;
  }

  dimension: papua_new_guinea {
    type: number
    sql: ${TABLE}.Papua_New_Guinea ;;
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

  dimension: puerto_rico {
    type: number
    sql: ${TABLE}.Puerto_Rico ;;
  }

  dimension: qatar {
    type: number
    sql: ${TABLE}.Qatar ;;
  }

  dimension: remittance_receiving_country_across__remittance_sending_country_down {
    type: string
    sql: ${TABLE}.remittance_receiving_country_across__Remittance_sending_country_down ;;
  }

  dimension: rep_congo {
    type: number
    sql: ${TABLE}.Rep_Congo ;;
  }

  dimension: romania {
    type: number
    sql: ${TABLE}.Romania ;;
  }

  dimension: russian_federation {
    type: number
    sql: ${TABLE}.Russian_Federation ;;
  }

  dimension: rwanda {
    type: number
    sql: ${TABLE}.Rwanda ;;
  }

  dimension: samoa {
    type: number
    sql: ${TABLE}.Samoa ;;
  }

  dimension: san_marino {
    type: number
    sql: ${TABLE}.San_Marino ;;
  }

  dimension: sao_tome_and_principe {
    type: number
    sql: ${TABLE}.Sao_Tome_and_Principe ;;
  }

  dimension: saudi_arabia {
    type: number
    sql: ${TABLE}.Saudi_Arabia ;;
  }

  dimension: senegal {
    type: number
    sql: ${TABLE}.Senegal ;;
  }

  dimension: serbia {
    type: number
    sql: ${TABLE}.Serbia ;;
  }

  dimension: seychelles {
    type: number
    sql: ${TABLE}.Seychelles ;;
  }

  dimension: sierra_leone {
    type: number
    sql: ${TABLE}.Sierra_Leone ;;
  }

  dimension: singapore {
    type: number
    sql: ${TABLE}.Singapore ;;
  }

  dimension: sint_maarten_dutch_part {
    type: number
    sql: ${TABLE}.Sint_Maarten_Dutch_part ;;
  }

  dimension: slovak_republic {
    type: number
    sql: ${TABLE}.Slovak_Republic ;;
  }

  dimension: slovenia {
    type: number
    sql: ${TABLE}.Slovenia ;;
  }

  dimension: solomon_islands {
    type: number
    sql: ${TABLE}.Solomon_Islands ;;
  }

  dimension: somalia {
    type: number
    sql: ${TABLE}.Somalia ;;
  }

  dimension: south_africa {
    type: number
    sql: ${TABLE}.South_Africa ;;
  }

  dimension: south_sudan {
    type: number
    sql: ${TABLE}.South_Sudan ;;
  }

  dimension: spain {
    type: number
    sql: ${TABLE}.Spain ;;
  }

  dimension: sri_lanka {
    type: number
    sql: ${TABLE}.Sri_Lanka ;;
  }

  dimension: st_kitts_and_nevis {
    type: number
    sql: ${TABLE}.St_Kitts_and_Nevis ;;
  }

  dimension: st_lucia {
    type: number
    sql: ${TABLE}.St_Lucia ;;
  }

  dimension: st_martin_french_part {
    type: number
    sql: ${TABLE}.St_Martin_French_part ;;
  }

  dimension: st_vincent_and_the_grenadines {
    type: number
    sql: ${TABLE}.St_Vincent_and_the_Grenadines ;;
  }

  dimension: sudan {
    type: number
    sql: ${TABLE}.Sudan ;;
  }

  dimension: suriname {
    type: number
    sql: ${TABLE}.Suriname ;;
  }

  dimension: swaziland {
    type: number
    sql: ${TABLE}.Swaziland ;;
  }

  dimension: sweden {
    type: number
    sql: ${TABLE}.Sweden ;;
  }

  dimension: switzerland {
    type: number
    sql: ${TABLE}.Switzerland ;;
  }

  dimension: syrian_arab_republic {
    type: number
    sql: ${TABLE}.Syrian_Arab_Republic ;;
  }

  dimension: tajikistan {
    type: number
    sql: ${TABLE}.Tajikistan ;;
  }

  dimension: tanzania {
    type: number
    sql: ${TABLE}.Tanzania ;;
  }

  dimension: thailand {
    type: number
    sql: ${TABLE}.Thailand ;;
  }

  dimension: the_bahamas {
    type: number
    sql: ${TABLE}.The_Bahamas ;;
  }

  dimension: the_gambia {
    type: number
    sql: ${TABLE}.The_Gambia ;;
  }

  dimension: timor_leste {
    type: number
    sql: ${TABLE}.Timor_Leste ;;
  }

  dimension: togo {
    type: number
    sql: ${TABLE}.Togo ;;
  }

  dimension: tonga {
    type: number
    sql: ${TABLE}.Tonga ;;
  }

  dimension: trinidad_and_tobago {
    type: number
    sql: ${TABLE}.Trinidad_and_Tobago ;;
  }

  dimension: tunisia {
    type: number
    sql: ${TABLE}.Tunisia ;;
  }

  dimension: turkey {
    type: number
    sql: ${TABLE}.Turkey ;;
  }

  dimension: turkmenistan {
    type: number
    sql: ${TABLE}.Turkmenistan ;;
  }

  dimension: turks_and_caicos_islands {
    type: number
    sql: ${TABLE}.Turks_and_Caicos_Islands ;;
  }

  dimension: tuvalu {
    type: number
    sql: ${TABLE}.Tuvalu ;;
  }

  dimension: uganda {
    type: number
    sql: ${TABLE}.Uganda ;;
  }

  dimension: ukraine {
    type: number
    sql: ${TABLE}.Ukraine ;;
  }

  dimension: united_arab_emirates {
    type: number
    sql: ${TABLE}.United_Arab_Emirates ;;
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

  dimension: uzbekistan {
    type: number
    sql: ${TABLE}.Uzbekistan ;;
  }

  dimension: vanuatu {
    type: number
    sql: ${TABLE}.Vanuatu ;;
  }

  dimension: venezuela_rb {
    type: number
    sql: ${TABLE}.Venezuela_RB ;;
  }

  dimension: vietnam {
    type: number
    sql: ${TABLE}.Vietnam ;;
  }

  dimension: virgin_islands_us {
    type: number
    sql: ${TABLE}.Virgin_Islands_US ;;
  }

  dimension: west_bank_and_gaza {
    type: number
    sql: ${TABLE}.West_Bank_and_Gaza ;;
  }

  dimension: world {
    type: number
    sql: ${TABLE}.World ;;
  }

  dimension: yemen_rep {
    type: number
    sql: ${TABLE}.Yemen_Rep ;;
  }

  dimension: zambia {
    type: number
    sql: ${TABLE}.Zambia ;;
  }

  dimension: zimbabwe {
    type: number
    sql: ${TABLE}.Zimbabwe ;;
  }

  measure: count {
    type: count
    drill_fields: [id, suriname]
  }
}
