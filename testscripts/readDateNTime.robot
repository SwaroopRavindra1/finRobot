*** Settings ***

Library     DateTime
*** Variables ***

*** Test Cases ***

Learn_Date_Movement

    ${todays_date}      Get Current Date
    Log To Console    ${todays_date}
    ${only_date}    Convert Date    ${todays_date}      result_format=%a %B %d
    Log To Console    ${only_date}


    # To make date++

    ${date_+_28}    Add Time To Date    ${todays_date}    28 days
    Log To Console    28 days from today's date is: ${date_+_28}


    # To make date--

    ${date_minus_28}    Add Time To Date    ${todays_date}    -28 days
    Log To Console    28 days back from today's date is: ${date_minus_28}

*** Keywords ***