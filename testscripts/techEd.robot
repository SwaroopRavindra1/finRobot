*** Settings ***

Library     SeleniumLibrary



*** Variables ***

${appurl}   https://www.techedtrainings.com
${browsername}   chrome
${expectedTitle}    Google


*** Test Cases ***
techEd_TC01
    Open Browser    ${appurl}    ${browsername}
    #Maximize broswer window

    Maximize Browser Window

    #click on contact btn

    Click Element    (//a[text()='Contact'])[1]

    Wait Until Page Contains    Contact
    Wait Until Page Contains    info@techedtrainings.com


    #Type first name

    Input Text    text-name    Satish

    Sleep    5


    # Print current page url

    ${cururl}   Get Location
    
    Log To Console    ${cururl}

    # Selecting drop down:Subjects

    Select From List By Value    menu-363  Data Science
    
    Sleep    5

    Select From List By Index    menu-363  2

    Sleep    5

    Select From List By Value    menu-363  Programming

    Sleep    5

    #print count all page links

    ${linkcount}    Get Element Count    //a
    Log To Console    ${linkcount}
    Close All Browsers

